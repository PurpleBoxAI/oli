#!/usr/bin/env bash
# Content checks for the Local Growth Pack repository. Exit 1 on any finding.
set -u
status=0
files=$(git ls-files '*.md' '*.json' '*.csv' '*.yml' '*.yaml')

echo "Check 1: em dashes"
if grep -n $'\xe2\x80\x94' $files; then echo "FAIL: em dash found"; status=1; else echo "ok"; fi

echo "Check 2: unfilled ~~ placeholders"
if grep -nE '~~[A-Za-z]' $files; then echo "FAIL: ~~ placeholder found"; status=1; else echo "ok"; fi

echo "Check 3: tracked OS debris"
if git ls-files | grep -E '(^|/)(\.DS_Store|Thumbs\.db)$'; then echo "FAIL: OS debris tracked"; status=1; else echo "ok"; fi

echo "Check 4: customer folders in the repo"
if git ls-files | grep -E '(^|/)Customer-'; then echo "FAIL: customer folder tracked"; status=1; else echo "ok"; fi

echo "Check 5: plugin manifest is valid JSON with a kebab-case name"
m=20-implementation/claude/local-growth-pack/.claude-plugin/plugin.json
if python3 -c "import json,re,sys; d=json.load(open('$m')); sys.exit(0 if re.fullmatch(r'[a-z0-9]+(-[a-z0-9]+)*', d['name']) else 1)"; then echo "ok"; else echo "FAIL: plugin.json"; status=1; fi

echo "Check 6: every skill folder has SKILL.md whose name matches the folder"
for d in 20-implementation/claude/local-growth-pack/skills/*/; do
  n=$(basename "$d")
  if ! grep -q "^name: $n$" "$d/SKILL.md" 2>/dev/null; then echo "FAIL: $n"; status=1; fi
done
[ $status -eq 0 ] && echo "ok"

exit $status
