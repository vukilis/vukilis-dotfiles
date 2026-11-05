#!/bin/bash

dbus-run-session -- sh -c '~/.config/polybar/launch.sh --shapes &'
flatpak run me.timschneeberger.jdsp4linux -t &