#!/bin/bash

OWN_REPO=${1:-origin}
OWN_BRANCH=${2:-master}

echo "from: $OWN_BRANCH, to: $OWN_REPO"



git push "${OWN_REPO}" "${OWN_BRANCH}"
