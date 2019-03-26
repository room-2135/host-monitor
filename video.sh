#!/bin/bash

gst-launch-1.0 udpsrc port=5000 caps='application/x-rtp, media=(string)video, clock-rate=(int)90000, encoding-name=(string)H264, packetization-mode=(string)1, sprop-parameter-sets=(string)"J0LAKJWgFAFugHiRNQA\=\,KM4BNyA\=", payload=(int)96, seqnum-offset=(uint)6073, timestamp-offset=(uint)1658855290, ssrc=(uint)1379718126, a-framerate=(string)30' \
    ! rtph264depay \
    ! avdec_h264 \
    ! videoconvert \
    ! autovideosink sync=false
