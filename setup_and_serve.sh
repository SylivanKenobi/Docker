#!/bin/bash
source ~/.nvm/nvm.sh
nvm install stable
nvm use stable
npm install -g grunt-cli
npm install
grunt serve
