#!/bin/bash

OWN_REPO=${1:origin}
OWN_BRANCH=${2:master}


git push "${OWN_REPO}" "${OWN_BRANCH}"
