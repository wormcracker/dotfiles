#!/bin/sh

get_mic_status() {
    is_muted=$(amixer get Capture | grep '\[off\]' | wc -l)
    if [ "$is_muted" -eq 2 ]; then
        echo ""  # Icon for muted
    else
        echo ""  # Icon for unmuted
    fi
}

toggle_mic_unmute() {
  amixer set Capture cap
  notify-send "  Microphone: unmuted" 
}
toggle_mic_mute() {
  amixer set Capture nocap
  notify-send "  Microphone: muted" 
}

if [ "$1" = "--mute" ]; then
  toggle_mic_mute
elif [[ "$1" = "--unmute" ]]; then
  toggle_mic_unmute
else 
  get_mic_status
fi
