#!/bin/bash

set -e

#if [ "$TRAVIS_BRANCH" == "master" ] && [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
if [ "$TRAVIS_BRANCH" != "gh-pages" ] && [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
	cd public

	git config user.email "bot@kstm.shinshu-u.ac.jp"
	git config user.name "kstm"

	git add -A
	git commit -m "Publish to gh-pages"

	cd ..

	git push -f origin gh-pages
fi

