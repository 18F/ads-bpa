#!/bin/sh
echo "Checking data/orders.yml..."
node -e "require('js-yaml').safeLoad(require('fs').readFileSync('data/orders.yml', { encoding: 'utf8' }))" && echo "  All good!"
echo "Checking data/vendors.yml..."
node -e "require('js-yaml').safeLoad(require('fs').readFileSync('data/vendors.yml', { encoding: 'utf8' }))" && echo "  All good!"