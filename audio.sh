gst-launch-1.0 udpsrc port=5000 caps="application/x-rtp, media=(string)audio, clock-rate=(int)8000, encoding-name=(string)PCMA" \
! rtppcmadepay \
! audio/x-alaw, rate=8000, channels=1 \
! alawdec \
! pulsesink
