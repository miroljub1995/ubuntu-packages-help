#!/bin/bash

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.profile
nvm install 12.16.3
