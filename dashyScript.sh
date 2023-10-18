#!/bin/bash
git clone https://github.com/Lissy93/dashy.git
git clone https://github.com/Fenrir000/sibintek_task.git
cp sibintek_task/dashyDockerfile dashy/
cd dashy
sudo docker build -t dash:v1 -f dashyDockerfile .
sudo docker run -d -p 4000:80 dash:v1
