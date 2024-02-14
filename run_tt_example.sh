#!/usr/bin/env bash

# Clone an example project (could be your own)
git clone https://github.com/TinyTapeout/tt06-factory-test ~/factory-test
cd ~/factory-test
# Clone the TT tools
git clone -b tt06 https://github.com/TinyTapeout/tt-support-tools tt
cd ~/factory-test/
# Set up the environment and a couple aliases I added
source /opt/tt/setup.sh
# Enter the prebuilt virtual environment
tt_venv
# Creates the TT user_config.tcl
tt_tool --create-user-config
# Same as the GitHub action that runs when you commit to TT
tt_tool --harden
