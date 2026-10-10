#!/bin/bash

set -e

echo "================================"
echo " CloudOps Terraform Plan"
echo "================================"

cd "$(dirname "$0")/.."

echo ""
echo "Step 1: Initializing Terraform..."
terraform init -backend=false

echo ""
echo "Step 2: Validating configuration..."
terraform validate

echo ""
echo "Step 3: Creating Terraform plan..."
terraform plan -out=cloudops.tfplan

echo ""
echo "SUCCESS: Terraform plan created!"
echo "Review the plan before applying any changes."
