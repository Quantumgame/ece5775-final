

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <inttypes.h>
#include "voicerec.h"
#include "constArrays.h"
#include "neuralNetworkSynth.h"

#define M_PI 3.14159265358979323846
#define LINESIZE 256

static inline precise_t mylog (precise_t x) {
  int i, result = 0; 
  precise_t temp = x;
  precise_t y= 0;
  precise_t b = (precise_t) 0.5;
  for (i=0; i < 8; ++i) {
    if (temp < 1) {
      temp = temp << 1;
      y= y-1;
    }
    else if (temp >= 2) {
      temp = temp >> 1;
      y++;
    }
  }
  for (i=0; i < 8; ++i) {
    temp = temp*temp;
    if (temp >= 2) {
      temp = temp >> 1;
      y = y + b;
    }
    b = b >> 1;
  }
  return y;
}

/****************************************************
http://betterexplained.com/articles/understanding-quakes-fast-inverse-square-root/
****************************************************/

float fastSqrt(float x){
    float xhalf = 0.5f * x;
    int i = *(int*)&x;            // store floating-point bits in integer
    i = 0x5f3759df - (i >> 1);    // initial guess for Newton's method
    x = *(float*)&i;              // convert new bits into float
    x = x*(1.5f - xhalf*x*x);     // One round of Newton's method
    return (1/x);
}

/****************************************************
https://unix4lyfe.org/dct-1d/
****************************************************/

void dct_ii(int N, precise_t *x, precise_t *X) {
  for (int k = 0; k < (N/2)+1 ; ++k) {
    precise_t sum = 0.;
    precise_t s = (k == 0) ? 0.707106781186548 : 1.;
    for (int n = 0; n < N; ++n) {
      sum += s * x[n] * dctMatrix[k][n];
    }
    X[k] = (sum * (precise_t)0.277350098112615);
  }
}

/*
 *                            COPYRIGHT
 *
 *  fft - Takes the FFT of a data (time domain) file, and outputs to file
 *   the complex FFT data.
 *
 *  Copyright (C) 2003, 2004, 2005 Exstrom Laboratories LLC
 */
/**********************************************************************
  FFT - calculates the discrete fourier transform of an array of double
  precision complex numbers using the FFT algorithm.

  c = pointer to an array of size 2*N that contains the real and
    imaginary parts of the complex numbers. The even numbered indices contain
    the real parts and the odd numbered indices contain the imaginary parts.
      c[2*k] = real part of kth data point.
      c[2*k+1] = imaginary part of kth data point.
  N = number of data points. The array, c, should contain 2*N elements
  isign = 1 for forward FFT, -1 for inverse FFT.
*/

void FFT( precise_t *c, int isign )
{
  int n, n2, nb, j, k, i0, i1, q;
  precise_t wr, wi, wrk, wik;
  precise_t d, dr, di, d0r, d0i, d1r, d1i;
  precise_t *cp;

  j = 0;
  n2 = NP / 2;
  for( k = 0; k < NP; ++k )
  {
    if( k < j )
    {
      i0 = k << 1;
      i1 = j << 1;
      dr = c[i0];
      di = c[i0+1];
      c[i0] = c[i1];
      c[i0+1] = c[i1+1];
      c[i1] = dr;
      c[i1+1] = di;
    }
    n = NP >> 1;
    for (q=0; q < 7; ++q) {
      if ( (j >= n) && (n >= 2) ) {
        j -= n;
        n = n >> 1;
      }
    }
    j += n;
  }

  for( n = 2; n <= NP; n = n << 1 )
  {
    wr = cosVec[n-1];
    wi = sinVec[n-1];
    if( isign == 1 ) wi = -wi;
    cp = c;
    nb = NP / n;
    n2 = n >> 1;
    for( j = 0; j < 128; ++j )
    {
      if (j < nb) {
        wrk = 1.0;
        wik = 0.0;
        for( k = 0; k < (NP >> 1); ++k )
        {
          if (k < n2) {
            i0 = k << 1;
            i1 = i0 + n;
            d0r = cp[i0];
            d0i = cp[i0+1];
            d1r = cp[i1];
            d1i = cp[i1+1];
            dr = wrk * d1r - wik * d1i;
            di = wrk * d1i + wik * d1r;
            cp[i0] = d0r + dr;
            cp[i0+1] = d0i + di;
            cp[i1] = d0r - dr;
            cp[i1+1] = d0i - di;
            d = wrk;
            wrk = wr * wrk - wi * wik;
            wik = wr * wik + wi * d;
          }
        }
        cp += n << 1;
      }
    }
  }
}

precise_t c[2*NP];
precise_t d[NP];
precise_t e[NUM_BANKS];

void processChunk( int sp, precise_t *ret, sound_t *inputSound)
{
  int i = 0;

  //printf("\ninput:\n");
  for( i = 0; i < NP; ++i )
  {
    c[2*i] = (precise_t)inputSound[sp+i];
    c[2*i+1] = (precise_t)0.0;
  }

  FFT( c, 1 );

  for( i = 0; i < NP; ++i )
  {
    d[i] = (c[2*i]*c[2*i] + c[2*i+1]*c[2*i+1])/(precise_t)256.0;
  }


  for (i = 0; i < NUM_BANKS ; ++i) {
    e[i] = 0;
  }

  int mellIdx = 0;
  for ( i = 0; i < NP; ++i ) {
    if ( i==mell[mellIdx] ) {
      e[ 0 ] += d[ mell[mellIdx] ];
    }

    if (( i > mell[ mellIdx ] ) && ( i <= mell[ mellIdx+1 ] )) {
      e[ mellIdx ] += d[i];
    }

    if (i == mell[ mellIdx+1 ]) {
      mellIdx++;
    } 
  }

  for (i=0 ; i < NUM_BANKS ; i++ ) {
    if (e[i] <= 0.0) {
      e[i] = 0.0;
    } else {
      e[i] = mylog(e[i]);
    }
  }

  // Calculate a DCT and only keep the first (NUM_BANKS/2) +1 coeffs
  dct_ii(NUM_BANKS, e, ret);

}

int begins[80];
int ends[80];
void preprocessSound(sound_t *inSound, int inSize, sound_t *outSound, int outSize) {
  int i = 0;
  int first = 0;
  int last = 0;
  
  for (i= 0; i < 80; i++) {
    begins[i] = -1;
    ends[i] = -1;
  }

  for (i = 0 ; i < inSize ; i++ ) {
    if (inSound[i] > 0.15) {
      first = i;
      break;
    }
  }

  for (i = inSize-1 ; i >= 0 ; i--) {
    if (inSound[i] > 0.15) {
      last = i;
      break;
    }
  }
  int numThreshold = 200;
  sound_t ampThreshold = 0.15;
  int markBegin = 0;
  int count = 0;
  int deleteFlag = 0;
  int j = 0;
  int index=0;

  for ( i = 0 ; i < inSize ; i++ ) {
    if ((i >= first) && (i <= last)) {
      if (markBegin == 0) {
        if ( fabs(inSound[i]) < ampThreshold ) {
          markBegin = i;
        }
      } 
      else {
        if ( fabs(inSound[i]) < ampThreshold ) {
          count++;
          if (count == numThreshold) {
            deleteFlag = 1;
          }
        }
        else {
          if (deleteFlag == 1) {
            begins[index] = markBegin;
            ends[index] = i;
            index++;
          }
          deleteFlag = 0;
          markBegin = 0;
          count = 0;
        }
      }
    }
  }

  index=0; 
  for (j = 0 ; j < inSize ; j++) {
    if (begins[index] != -1) {
      if ((j >= begins[index]) && (j < ends[index])) {
        inSound[j] = 0;
      } else if (j == ends[index]) {
        index++;
      }
    }
  }

  j = 0;
  for ( i = 0; i < inSize; i++) {
    if ((i >= first && i <= last && j != 8000)) {
      if (fabs(inSound[i]) > 0) {
        outSound[j] = inSound[i];
        j++;
      }
    } else if (j < 8000 && i >= first) {
      outSound[j] = 0;
      j++;
    }
  }

}

precise_t result[NUMRESULTS][(NUM_BANKS/2)+1];
int voicerec(sound_t inSound[ORIGSIZE]) {
  int i = 0, j=0, stride = 0, classification = -1;

  stride = NP/2;
  int num_results = (8000/stride);
  sound_t outSound[8000];
  preprocessSound(inSound, 16000, outSound, 8000);

  int index = 0;
  for (i = 0; i+NP <8000 ; i += stride) {
    processChunk(i, result[index], outSound);
    index++;
  }
  classification = classifySound(result);
  return classification;
}
