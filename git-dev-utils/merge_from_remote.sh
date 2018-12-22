#!/bin/bash

TOPIC_BRANCH=$1
git fetch upstream
git checkout master
git merge upstream/master
git push origin master
git push origin master
git branch -d ${TOPIC_BRANCH}
git push -d origin ${TOPIC_BRANCH}