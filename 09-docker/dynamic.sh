#!/bin/bash
docker build -t hometask-image .
docker run -d --name dynamic-site -p 8080:80 hometask-image