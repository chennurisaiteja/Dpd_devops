#!/bin/bash

echo "⏳ Waiting for services to start..."
sleep 5

declare -a urls=(
  "http://localhost:8080/service1/ping"
  "http://localhost:8080/service1/hello"
  "http://localhost:8080/service2/ping"
  "http://localhost:8080/service2/hello"
)

for url in "${urls[@]}"
do
  echo -n "🔍 Testing $url ... "
  if curl -s --fail "$url" > /dev/null; then
    echo "✅ Success"
  else
    echo "❌ Failed"
  fi
done

