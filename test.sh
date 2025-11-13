#!/bin/bash
set -x
echo "Debugging Example"
a=5
b=10
sum=$((a + b))
echo "Sum: $sum"
set +x
echo "Debugging Off"