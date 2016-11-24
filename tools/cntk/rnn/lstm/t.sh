start=`date +%s.%N`
cntk configFile=rnn.cntk deviceId=$deviceId minibatch=$minibatchSize maxEpochs=$maxEpochs
end=`date +%s.%N`
runtime=$( echo "$end - $start" | bc -l )
echo "GPUCount: 1" 
echo "MinibatchSize: ${minibatchSize}" 
echo "finished with execute time: ${runtime}" 
rm -rf Output/*
