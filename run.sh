#!/bin/bash

tor

# Tor identity
newnym() {
  echo -n "AUTHENTICATE" | nc 127.0.0.1 9051
  echo -n "SIGNAL NEWNYM" | nc 127.0.0.1 9051
}

# Download the repo
git clone https://github.com/CPScript/Sfoot-Easy

# Change your current directory to the one where you cloned the repository.
cd Sfoot-Easy/easy

source easy.sh
