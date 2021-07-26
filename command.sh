#!/bin/sh

config=${1:-"is09-13/IS09_emotion.conf"}

cd /workspace/audio
for i in *.wav; do
    echo "analyzing $i..."
    SMILExtract -C /opensmile/config/$config -I $i -O /workspace/result/${i%.*}.arff
done