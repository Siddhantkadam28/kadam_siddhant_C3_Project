!/bin/bash

cd /home/ec2-user/my-python-app

pip install requirements.txt .

sleep 5s

nohup python3 app.py > logs.txt 2>&1 &
