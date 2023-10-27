#!/bin/bash
#SIMPLE TOR LAUNCHER | for launching tor before a repo starts

# Are you root check
if [[ $EUID -ne 0 ]]; then
  echo You are root!
  sleep 1
  clear

  echo PLEASE use a vpn or run this script of a disposible USB or VM!
  sleep 6
  clear
  echo Launching tor before running script, please wait...
  sleep 2
  clear

  tor

  # Tor identity
  newnym() {
    echo -n "AUTHENTICATE" | nc 127.0.0.1 9051
    echo -n "SIGNAL NEWNYM" | nc 127.0.0.1 9051
  }

  # Download the repo
  git clone https://github.com/CPScript/Sfoot-Easy

  # Change Dir
  cd Sfoot-Easy/script

  # Launch script
  source easy.sh

else
  # Not rooted message | How to root
  echo Please root!
  sleep 2
  echo | Example on how to root your terminal:
  echo | > sudo su < might require a password >
fi
