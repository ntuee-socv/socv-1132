#!/bin/bash

# Install prerequisites for building yosys
sudo apt update
sudo apt -y install cmake curl libgmp-dev gperf build-essential bison flex libreadline-dev gawk tcl-dev libffi-dev git cmake parallel
sudo apt -y install graphviz xdot pkg-config python3 libboost-system-dev libboost-python-dev libboost-filesystem-dev zlib1g-dev libgmp-dev
