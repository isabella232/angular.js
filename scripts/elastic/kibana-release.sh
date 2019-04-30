#!/bin/bash

yarn grunt package
cp README.md build
cp scripts/elastic/index.js build
cp scripts/elastic/package.json build
cp scripts/elastic/package.json build
cd build
git init
git checkout -b kibana-release
git add -A
git commit -m "Kibana release"
git remote add elastic git@github.com:elastic/angular.js.git
git push -f elastic kibana-release
cd ..
