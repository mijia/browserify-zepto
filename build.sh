#!/bin/bash

cd zepto
git checkout 1.1-stable
npm install
export NODE_PATH=./node_modules:$NODE_PATH
export MODULES="zepto event ajax form ie detect fx fx_methods data selector touch gesture"
npm run-script dist
cp dist/zepto.js ../
echo 
echo "Build done, please remember to update the CommonJS code part..."
echo "Remove the window.Zepto part and add this line"
echo "exports.$ = exports.Zepto = Zepto;"