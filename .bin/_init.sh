#!/bin/bash

# Clear project
rm -rf node_modules
rm -rf yarn.lock
rm -rf dist
rm -rf .husky
rm -rf .lintstagedrc.json
rm -rf .eslintignore
rm -rf .eslintrc.js
rm -rf .prettierrc
rm -rf .prettierignore
rm -rf .npmrc
rm -rf .nvmrc
rm -rf .yarnrc
rm -rf tsconfig.json
rm -rf tsconfig.path.json
rm -rf package.json
rm -rf package.jsone
rm -rf package-lock.json
rm -rf yarn-error.log

# Initialize project
yarn init -y

# Add engines attribute
IS_ENGINES=$(sed -n '/engines/p' package.json)
if  [[ ! -n "$IS_ENGINES" ]] ; then
    license=$(sed -n '/"license": "[.a-zA-Z0-9]*"/p' package.json)
    sed -ie "s/  \"license\": \"[.a-zA-Z0-9]*\"/$license,\n  \"engines\": {\n    \"node\": \"\"\n  }/g" package.json
fi
