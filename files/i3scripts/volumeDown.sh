#!/bin/bash
DEF_SINK=`pactl info | sed -En 's/Default Sink: (.*)/\1/p'`
echo $DEF_SINK
pactl set-sink-volume $DEF_SINK -10%
