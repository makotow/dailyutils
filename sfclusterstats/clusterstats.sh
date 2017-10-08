#!/bin/bash
## outputfile name
OUTPUT="stats"$$".log"
DURATION=10
# create files
touch $OUTPUT

# output header
sfcli -j cluster getstats | jq -r -c '([ .result.clusterStats | keys] | unique | .[] | @csv)' | tee $OUTPUT

# get cluster stats

while :;
do
	sfcli -j cluster getstats | jq -r -c '([ .result.clusterStats][] | [.actualIOPS,.averageIOPSize,.clientQueueDepth,.clusterUtilization,.latencyUSec,.readBytes,.readLatencyUSec,.readOps, .timestamp[0:10] + " " + .timestamp[11:19], .unalignedReads,.unalignedWrites,.writeBytes,.writeLatencyUSec,.writeOps] | @csv)' | tee -a $OUTPUT
	sleep $DURATION
done
