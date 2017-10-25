#!/bin/bash

set -eu
set -o pipefail

cd public
git add --all
git commit -m 'Publish to gh-pages'
git push origin gh-pages
