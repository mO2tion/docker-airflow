#!/usr/bin/env bash

set -eo pipefail

# Dir of this script, see https://stackoverflow.com/questions/59895/get-the-source-directory-of-a-bash-script-from-within-the-script-itself
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Dynamic tag
[[ -z "$TAG" ]] && TAG="`whoami`.commons"

IMAGE="dev1.mo2tion.com:5000/airflow-base"
DOCKERFILE="$DIR/Dockerfile"
echo "building $IMAGE:$TAG from $DOCKERFILE"
docker build --build-arg ARG_BUILD_NUMBER=$TAG -t $IMAGE:$TAG -f $DOCKERFILE $DIR/.
docker tag $IMAGE:$TAG $IMAGE:latest
