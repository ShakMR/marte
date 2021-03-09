#!/usr/bin/env sh

LC_PROJECT_NAME=marte
ssh -tt -o StrictHostKeyChecking=no suilabs@suilabs.com "mkdir -p Projects/${LC_PROJECT_NAME}" && \
rsync -rcplz --verbose ${PWD}/../* suilabs@suilabs.com:./Projects/${LC_PROJECT_NAME}/. && \
ssh -tt -o SendEnv=PROJECT_NAME -o StrictHostKeyChecking=no suilabs@suilabs.com "cd Projects/${LC_PROJECT_NAME}; docker-compose up -d --build"
