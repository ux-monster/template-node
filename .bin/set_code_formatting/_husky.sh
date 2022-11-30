#!/bin/bash

# Install
yarn add husky

# Create husky config files
mkdir .husky
touch .husky/pre-commit
chmod 755 .husky/pre-commit
echo '#!/bin/sh' > .husky/pre-commit
echo '. "$(dirname "$0")/_/husky.sh"' >> .husky/pre-commit
echo '' >> .husky/pre-commit
echo 'yarn lint-staged && echo \"[Husky] pre-commit\"' >> .husky/pre-commit

# Enable husky pre-commit hook
git config advice.ignoredHook false

# Install git hook
./node_modules/husky/lib/bin.js install .husky
