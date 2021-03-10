#!/bin/sh
set -xe

usage="""
Usage:
    $0 DOCKERFILE IMAGE_NAME [ --dazzle IMAGE_NAME.tar ]

Parameters:
    DOCKERFILE                  Directory to your Dockerfile
    IMAGE_NAME                  Image name to be used for this build

Flags:
    --dazzle IMAGE_NAME.tar     Mandatory for exporting latest builds as tar file.
"""

if [[ $# -ne 2 ]]; then
  echo usage
  exit 2
fi

while getopts dazzle option
do
sh ./circleci/dazzle_build_image.sh $1 $2 ${OPTARGS}
esac
done