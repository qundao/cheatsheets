#!/usr/bin/env bash
set -eu

remote_repo="reference"
local_repo="overrides"
basedir="."

echo "update submodule"
git submodule update  --init --recursive ${remote_repo}

echo "copy ${remote_repo}"
cp -r ${remote_repo}/{source,themes}    ${basedir}
cp -r ${remote_repo}/package.json       ${basedir}
cp -r ${remote_repo}/*.js               ${basedir}

echo "Update ${local_repo} layout"
cp -r ${local_repo}/layout/*            ${basedir}/themes/coo/layout/
