#!/bin/bash

echo "Waiting for application..."

for i in {1..10}
do
    response=$(curl -s http://localhost:8000)

    if [ "$response" = "Hello from CI/CD - Version 2" ]; then
        echo "TEST PASSED"
        exit 0
    fi

    sleep 2
done

echo "TEST FAILED"
echo "Response: $response"

exit 1
