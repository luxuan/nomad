#!/bin/sh

ps -ef|grep nomad|grep -v grep|cut -c 9-15|sudo xargs kill -9
sudo rm -rf /home/liubin8/nomad/data 
sudo rm -rf nohup.out 
sudo nohup nomad agent -config client.hcl &
