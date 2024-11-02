#!/bin/bash
# Check if the web server is running
if curl -s http://localhost | grep -q "React App"; then
  echo "Application is running."
  exit 0
else
  echo "Application is not running."
  exit 1
fi
