#!/bin/bash
docker run -d --name static-site -p 8081:80 hometask-image
docker exec -d static-site rm /var/www/html/index.php
docker cp index.html static-site:/var/www/html