//===========================================================================
// digitrec.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef VOICEREC_H
#define VOICEREC_H

#include<hls_stream.h>

#include "typedefs.h"

#define NUM_BANKS 26
#define NP 256
#define STRIDE NP/2
#define NUMRESULTS 63
#define ORIGSIZE 16000
#define SOUNDSIZE 8000
// Top function for synthesis
void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<bit32_t> &strm_out
);

void processChunk( int sp, precise_t *ret, precise_t *inSound );

void preprocessSound(sound_t *inSound, int inSize, sound_t *outSound, int outSize);

int voicerec(sound_t *inSound);
#endif
