#!/bin/bash

# Install
yarn add lint-staged

# Create husky config files
echo "{" > .lintstagedrc.json
echo "  \"**/*.{js,jsx,ts,tsx}\": [\"eslint --fix .\", \"prettier -c .\"]" >> .lintstagedrc.json
echo "}" >> .lintstagedrc.json

