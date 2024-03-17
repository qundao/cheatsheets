#!/usr/bin/env bash
set -eu

echo "update submodule"
git submodule update --recursive

echo "copy reference"
cp -r reference/{source,themes} .
cp -r reference/package.json .
cp -r reference/*.js .

echo "overrides layout"
cp -r overrides/layout/* ./themes/coo/layout/
