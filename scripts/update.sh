#!/bin/sh

set -e

BASEDIR="$(cd "$(dirname "$0")"; pwd)"/..;

# Assert existence of mktemp
which mktemp
which npm
which git

# Get a path
TMPDIR=$(mktemp -d)

# Clone into path
cd $TMPDIR

git clone https://github.com/limeapartments/website.git

cd website

npm install

npm run build:production

# Remove old site content, keeping static files
ls -Ad "$BASEDIR/"* \
| grep -v CNAME \
| grep -v scripts \
| grep -v README.md \
| grep -v .git \
| grep -v .gitignore \
| xargs rm -r

# Copy new build files in
cp -r build/. $BASEDIR
