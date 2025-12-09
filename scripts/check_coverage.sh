#!/bin/bash

# Function to calculate coverage
calculate_coverage() {
  lcov --summary coverage/lcov.info | grep "lines" | awk '{print $2}' | cut -d'%' -f1
}

# Minimum threshold
MIN_COVERAGE=70

# Calculate current coverage
CURRENT_COVERAGE=$(calculate_coverage)

echo "Current coverage: ${CURRENT_COVERAGE}%"
echo "Minimum required: ${MIN_COVERAGE}%"

# Compare with threshold
if (( $(echo "$CURRENT_COVERAGE < $MIN_COVERAGE" | bc -l) )); then
  echo "❌ Coverage ${CURRENT_COVERAGE}% is below minimum ${MIN_COVERAGE}%"
  exit 1
else
  echo "✅ Coverage check passed!"
  exit 0
fi