#!/bin/bash

set -e

#if [ "$TRAVIS_BRANCH" == "master" ] && [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
if [ "$TRAVIS_BRANCH" != "gh-pages" ] && [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
	cd public

	echo '$ pwd'
	pwd

	echo '$ ls'
	ls -al *

	echo '$ git status'
	git status

	echo '$ git worktree list'
	git worktree list

	git config user.email "bot@kstm.shinshu-u.ac.jp"
	git config user.name "kstm"

	git add -A
	git commit -m "Publish to gh-pages"

	cd ..

	git push origin gh-pages
fi

