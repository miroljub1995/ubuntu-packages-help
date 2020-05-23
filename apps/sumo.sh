#!/bin/bash
set -e

sudo add-apt-repository ppa:sumo/stable
sudo apt-get update
sudo apt-get install -y sumo sumo-tools sumo-doc
echo -e '\n# add SUMO_HOME var\nexport SUMO_HOME="/usr/share/sumo/"\n# ####\n' >> ~/.bashrc