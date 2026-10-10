#!/bin/bash

set -e

echo "================================"
echo " CloudOps Terraform Validation"
echo "================================"

cd "$(dirname "$0")/.."

echo ""
echo "Step 1: Checking Terraform formatting..."
terraform fmt -check -recursive

echo ""
echo "Step 2: Initializing Terraform..."
terraform init -backend=false

echo ""
echo "Step 3: Validating Terraform configuration..."
terraform validate

echo ""
echo "SUCCESS: All Terraform checks passed!"
