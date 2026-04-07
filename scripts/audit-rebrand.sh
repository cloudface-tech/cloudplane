#!/bin/bash
# scripts/audit-rebrand.sh
# Checks for leftover "Plane" references that should be "CloudPlane"

set -e

echo "=== CloudPlane Rebrand Audit ==="

ERRORS=0

# Check for standalone "Plane" without "Cloud" prefix in user-visible files
RESULTS=$(grep -rn "\bPlane\b" \
  --include="*.tsx" --include="*.ts" --include="*.html" --include="*.json" \
  apps/ packages/constants/ packages/i18n/ \
  2>/dev/null \
  | grep -v "CloudPlane" \
  | grep -v "Copyright" \
  | grep -v "SPDX" \
  | grep -v "node_modules" \
  | grep -v "airplane" \
  | grep -v "cloudplane-logos" \
  | grep -v "CHANGELOG" \
  | grep -v "\.plane\." \
  | grep -v "pnpm-lock" \
  | grep -v "Planen\|Planes\|Planejad\|Planeje\|Planet" \
  || true)

if [ -n "$RESULTS" ]; then
  echo "WARNING: Found potential un-rebranded 'Plane' references:"
  echo "$RESULTS"
  ERRORS=$((ERRORS + $(echo "$RESULTS" | wc -l)))
else
  echo "PASS: No un-rebranded 'Plane' text found."
fi

echo ""

# Check for plane.so domain references
DOMAIN_RESULTS=$(grep -rn "plane\.so" \
  --include="*.tsx" --include="*.ts" --include="*.html" --include="*.json" \
  apps/ packages/ \
  2>/dev/null \
  | grep -v "node_modules" \
  | grep -v "Copyright" \
  | grep -v "SPDX" \
  || true)

if [ -n "$DOMAIN_RESULTS" ]; then
  echo "WARNING: Found plane.so domain references:"
  echo "$DOMAIN_RESULTS"
  ERRORS=$((ERRORS + $(echo "$DOMAIN_RESULTS" | wc -l)))
else
  echo "PASS: No plane.so domain references found."
fi

echo ""

# Check for @planepowers references
TWITTER_RESULTS=$(grep -rn "@planepowers\|planepowers" \
  --include="*.tsx" --include="*.ts" --include="*.html" --include="*.json" \
  apps/ packages/ \
  2>/dev/null \
  | grep -v "node_modules" \
  || true)

if [ -n "$TWITTER_RESULTS" ]; then
  echo "WARNING: Found @planepowers references:"
  echo "$TWITTER_RESULTS"
  ERRORS=$((ERRORS + $(echo "$TWITTER_RESULTS" | wc -l)))
else
  echo "PASS: No @planepowers references found."
fi

echo ""
echo "=== Audit Complete ==="

if [ "$ERRORS" -eq 0 ]; then
  echo "RESULT: ALL CHECKS PASSED"
else
  echo "RESULT: $ERRORS potential issues found"
  exit 1
fi
