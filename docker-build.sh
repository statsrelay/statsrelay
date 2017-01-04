#!/bin/bash
set -x
docker build -t statsrelay_intermediate -f docker/Dockerfile.build .
container=$(docker create statsrelay_intermediate)
docker cp $container:/statsrelay artifacts
docker rm $container
docker build --no-cache -t synack/statsrelay -f docker/Dockerfile.sparse .
docker build -t synack/statsrelay-spam -f docker/Dockerfile.spam .
rm -rf artifacts
docker rmi statsrelay_intermediate
