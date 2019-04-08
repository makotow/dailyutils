#!/bin/bash

REMOTE_REPO=${1:upstream}
REMOTE_BRANCH=${2:master}

OWN_REPO=${3:origin}
OWN_BRANCH=${4:master}


git fetch "${REMOTE_REPO}"
git checkout "${OWN_BRANCH}"
git merge "${REMOTE_REPO}"/"${REMOTE_BRANCH}" --no-edit

git push "${OWN_REPO}" "${OWN_BRANCH}"
