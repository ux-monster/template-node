#!/bin/bash

# Install prettier
yarn add prettier

# Create prettier config file
echo '{' > .prettierrc
echo '  "arrowParens": "always",' >> .prettierrc
echo '  "bracketSpacing": true,' >> .prettierrc
echo '  "embeddedLanguageFormatting": "auto",' >> .prettierrc
echo '  "endOfLine": "lf",' >> .prettierrc
echo '  "htmlWhitespaceSensitivity": "css",' >> .prettierrc
echo '  "insertPragma": false,' >> .prettierrc
echo '  "jsxBracketSameLine": false,' >> .prettierrc
echo '  "jsxSingleQuote": false,' >> .prettierrc
echo '  "printWidth": 80,' >> .prettierrc
echo '  "proseWrap": "preserve",' >> .prettierrc
echo '  "quoteProps": "as-needed",' >> .prettierrc
echo '  "requirePragma": false,' >> .prettierrc
echo '  "semi": true,' >> .prettierrc
echo '  "singleQuote": false,' >> .prettierrc
echo '  "tabWidth": 2,' >> .prettierrc
echo '  "trailingComma": "none",' >> .prettierrc
echo '  "useTabs": false,' >> .prettierrc
echo '  "vueIndentScriptAndStyle": false' >> .prettierrc
echo '}' >> .prettierrc

# Create prettier ignore file
echo '.husky' > .prettierignore
echo 'dist' >> .prettierignore
echo 'node_modules' >> .prettierignore
echo 'yarn.lock' >> .prettierignore
