#!/bin/bash

# Install typescript
yarn add -D typescript

# Create typescript path configuration file - tsconfig.path.json
echo "{" > ./tsconfig.path.json
echo "  \"compilerOptions\": {" >> ./tsconfig.path.json
echo "    \"baseUrl\": \".\"," >> ./tsconfig.path.json
echo "    \"paths\": {" >> ./tsconfig.path.json
echo "      \"@src/*\": [\"src/*\"]" >> ./tsconfig.path.json
echo "      // Add folder" >> ./tsconfig.path.json
echo "      // \"@xxx/*\": [\"src/xxx/*\"]," >> ./tsconfig.path.json
echo "    }" >> ./tsconfig.path.json
echo "  }" >> ./tsconfig.path.json
echo "}" >> ./tsconfig.path.json

# Create typescript configuration file - tsconfig.json
echo "{" > ./tsconfig.json
echo "  \"extends\": \"./tsconfig.path.json\"," >> ./tsconfig.json
echo "  \"compilerOptions\": {" >> ./tsconfig.json
echo "    \"target\": \"es2016\"," >> ./tsconfig.json
echo "    \"module\": \"commonjs\"," >> ./tsconfig.json
echo "    \"esModuleInterop\": true," >> ./tsconfig.json
echo "    \"forceConsistentCasingInFileNames\": true," >> ./tsconfig.json
echo "    \"strict\": true," >> ./tsconfig.json
echo "    \"skipLibCheck\": true," >> ./tsconfig.json
echo "    \"outDir\": \"./dist\"" >> ./tsconfig.json
echo "  }," >> ./tsconfig.json
echo "  \"include\": [\"src\"]," >> ./tsconfig.json
echo "  \"exclude\": [\"node_modules\", \"dist\"]" >> ./tsconfig.json
echo "}" >> ./tsconfig.json
