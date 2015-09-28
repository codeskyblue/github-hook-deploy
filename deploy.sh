#!/bin/bash -
#
#

export GIT_SSH=$(dirname $0)/ssh-wrap.sh

set -eu
git clone "${GIT_REPO_URL:?}" workdir/dev

cd workdir/dev
godep go build
