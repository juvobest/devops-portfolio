#!/bin/bash
set -e

APP_DIR=/home/devopsuser/apps/portfolio

if [ ! -d "$APP_DIR/.git" ]; then
  git clone https://github.com/juvobest/devops-portfolio.git $APP_DIR
else
  cd $APP_DIR
  git pull origin main
fi

cd $APP_DIR/docker-compose-app
docker-compose down
docker-compose up -d
