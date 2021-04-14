#!/bin/bash

function log {
   echo $1
}

log 'Build an image.'
docker build -t my-crkbd .

log 'Run a container.'
docker run -itd --name my-crkbd my-crkbd

log 'Remove a container.'
docker rm -f my-crkbd
