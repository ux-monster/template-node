#!/bin/bash

# Install eslint
yarn add eslint

# Install prettier related packages
yarn add eslint-config-prettier
yarn add eslint-plugin-prettier

# Install eslint typescript packages
yarn add -D @typescript-eslint/eslint-plugin
yarn add -D @typescript-eslint/parser

# Create eslint config file
echo "module.exports = {" > .eslintrc.js
echo "  parser: \"@typescript-eslint/parser\"," >> .eslintrc.js
echo "  extends: [" >> .eslintrc.js
echo "    \"plugin:@typescript-eslint/recommended\"," >> .eslintrc.js
echo "    \"plugin:prettier/recommended\"" >> .eslintrc.js
echo "  ]," >> .eslintrc.js
echo "  rules: {" >> .eslintrc.js
echo "    \"prettier/prettier\": 0," >> .eslintrc.js
echo "    \"comma-dangle\": [\"error\", \"never\"]" >> .eslintrc.js
echo "  }" >> .eslintrc.js
echo "};" >> .eslintrc.js

# Create eslint ignore file
echo "node_modules/*" > .eslintignore
echo "dist/*" >> .eslintignore
echo "asset/*" >> .eslintignore
