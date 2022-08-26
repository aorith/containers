#!/usr/bin/env bash
cd "$(dirname -- "$0")" || exit 1

last_tag=$(git ls-remote --tags --refs git@github.com:aorith/containers.git "v$(date +%Y%m)*" | tail -1 | grep -Eo 'v[0-9]+')
curr_date=$(date +%Y%m%d)

if [[ "$curr_date" == "${last_tag:1: -2}" ]]; then
    new_tag="v$(( ${last_tag:1} + 1 ))"
else
    new_tag="v${curr_date}00"
fi

set -e
git add -A
git commit -S -m "$last_tag => $new_tag"
git tag -m "$new_tag" -s "$new_tag"
git push --all
git push --tags
