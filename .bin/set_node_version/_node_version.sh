#!/bin/bash

# Declare node version
NODE_VERSION="v18.12.1"

# Set node version to package.json
function set_attribute() {
  sed -ie "s/\"$2\": \"[.a-zA-Z0-9]*\"/\"$2\": \"$3\"/g" $1
}
set_attribute package.json node $NODE_VERSION
