#!/bin/bash

set -e

cd "$(dirname "$0")/.."

echo "================================"
echo " CloudOps Terraform CI Checks"
echo "================================"

echo ""
echo "Running validation..."
./scripts/validate.sh

echo ""
echo "Running Terraform plan..."
./scripts/plan.sh

echo ""
echo "SUCCESS: All CI checks completed!"
