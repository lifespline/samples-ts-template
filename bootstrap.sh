#!/bin/bash

# 1 - install system dependencies
# node is required to run JS files compiled from TS files
# and to install npm
sudo apt install nodejs
    
# required to install TS
sudo apt install npm

# remove "no longer required" packages
yes | sudo apt autoremove

# 2 - install app dependencies
#
# read `doc/layout.md::package.json` to learn about the dev and prod project 
# requirements
npm i

# 3 - task runner
python3 -m venv .env
source .env/bin/activate
pip install -r requirements.txt
