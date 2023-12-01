#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Send a request to the URL using curl and display the size of the response body in bytes
curl -sI "$1" | grep -i Content-Length | awk '{print $2}' | tr -d '\r\n'
