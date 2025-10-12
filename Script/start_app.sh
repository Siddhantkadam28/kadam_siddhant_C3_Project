#!/bin/bash

cd /home/ec2-user/sid

pip install requirements.txt .

sleep 5s

nohup python3 sid.py > logs.txt 2>&1 &
