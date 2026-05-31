#!/bin/bash

echo "Hello from GitHub"
echo "This script is running inside Jenkins"

echo "Current user:"
whoami

echo "Current folder:"
pwd

echo "List files:"
ls -la

echo "Java version:"
java -version

echo "Git version:"
git --version