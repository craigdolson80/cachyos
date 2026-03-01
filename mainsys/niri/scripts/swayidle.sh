#!/usr/bin/env sh

swayidle -w \
  timeout 900 'niri msg action power-off-monitors' \
  resume 'niri msg action power-on-monitors'