#!/bin/bash

response=$(curl -s http://localhost:8000)

if [ "$response" = "Hello from CI/CD - Version 2" ]; then
    echo "TEST PASSED"
    exit 0
else
    echo "TEST FAILED"
    exit 1
fi
