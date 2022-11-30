#!/bin/bash

# Create nvm config file
echo "$NODE_VERSION" > .nvmrc

# Set nvm path
unset PREFIX
. ~/.nvm/nvm.sh

# Set node version
nvm install $NODE_VERSION
nvm use
