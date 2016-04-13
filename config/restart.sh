#!/bin/sh


cd ..
if [ $0 == 0 ]; then
    make dev
fi
cd -

ps -ef|grep nomad|grep -v grep|cut -c 9-15|sudo xargs kill -9
sudo rm -rf /tmp/nomad_bootstrap_server  &&
sudo rm -rf nohup.out  &&
if [ $0 == 0 ]; then
sudo cp ../bin/nomad /usr/bin/nomad
fi
sudo nomad agent -config server.hcl
