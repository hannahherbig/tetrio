#!/bin/bash

set -euxo pipefail

paths=(
	api/general/stats
	api/users/lists/league/all
)


for path in ${paths[@]}
do
	mkdir -p $(dirname $path)
	curl -s https://ch.tetr.io/$path | jq .data > $path.json
done
