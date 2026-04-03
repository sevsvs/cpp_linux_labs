#!/bin/bash
git checkout prd
git merge stg --no-edit
TAG_NAME="production-$(date +%Y%m%d-%H%M%S)"
git tag "$TAG_NAME"
git push origin prd
git push origin "$TAG_NAME"
git checkout dev
