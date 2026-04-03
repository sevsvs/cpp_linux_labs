#!/bin/bash
git checkout stg
git merge dev --no-edit
TAG_NAME="release-$(date +%Y%m%d-%H%M%S)"
git tag "$TAG_NAME"
git push origin stg
git push origin "$TAG_NAME"
git checkout dev
