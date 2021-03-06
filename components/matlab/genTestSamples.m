function genTestSamples(iterations, filename)
% This script records 2 seconds of sound and outputs it to 
% a C header file of type double. 8kHz, 2 seconds = 16000 samples.
% @in: iterations- number of test samples to generate
% @in: filename- String of name of samples and filename
%
% Output: File of name test_<filename>.h containing arrays 
%   of format <filename>x[16000]

fid = fopen(strcat('test_',strcat(filename, '.h')), 'w');
if (fid==1)
    return
end
recObj = audiorecorder;

% Record a 2-second sample at 8 kHz
for i = 1:iterations
    fprintf(fid, 'double %s%d[16000]={', filename, i);
    pause(0.5);
    while(1)
        disp('Say something...')
        recordblocking(recObj,2);
        disp('Recording ended')
        y=getaudiodata(recObj);
        soundsc(y);
        str = input('Rerecord? (y or n) (default:n)\n','s');
        if (numel(str)== 0)
            break;
        end
        if (str(1) == 'n')
            break;
        end
    end
    for j= 1:16000
        if j == 16000
            fprintf(fid, '%f', y(j));
        elseif mod(j,10) == 0
            fprintf(fid, '%f,\n', y(j));
        else          
            fprintf(fid, '%f,', y(j));
        end
    end
    fprintf(fid, '};\n\n');
end
fclose('all');