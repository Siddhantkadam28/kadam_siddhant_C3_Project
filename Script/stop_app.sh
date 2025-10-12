#!/bin/bash

# Find the process ID(s) of the running 'sid.py' Python script
PIDS=$(pgrep -f "python3 sid.py")

if [ -n "$PIDS" ]; then
    # If a process is found, terminate it forcefully
    kill -9 $PIDS
    echo "Previous instance of sid.py terminated successfully."
else
    # If no process is running, print a message
    echo "No running instance of sid.py found."
fi
