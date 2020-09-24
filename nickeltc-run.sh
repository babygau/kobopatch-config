#!/bin/bash
exec /usr/local/bin/docker run --volume="$PWD:$PWD" --user="$(id --user):$(id --group)" --workdir="$PWD" --env=HOME --entrypoint="$(basename "${BASH_SOURCE[0]}")" --rm -it docker.io/geek1011/nickeltc:1 "$@"
