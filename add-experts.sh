#!/bin/bash

# Expert Panel - Local Install
# Save this somewhere permanent (like ~/scripts/add-experts)
# Then run from any project: add-experts

# SET THIS to where your template lives
TEMPLATE_DIR="$HOME/Projects/claude-code-expert-template"

# ─────────────────────────────────────────────

if [ ! -d "$TEMPLATE_DIR" ]; then
  echo "❌ Template not found at $TEMPLATE_DIR"
  echo "   Edit this script and set TEMPLATE_DIR to your template location"
  exit 1
fi

echo "🧠 Adding Expert Panel to $(basename $(pwd))..."

# Copy .claude folder
cp -r "$TEMPLATE_DIR/.claude" .

# Copy CLAUDE.md
cp "$TEMPLATE_DIR/CLAUDE.md" .

# Copy doc templates (won't overwrite existing)
mkdir -p docs
for doc in project_plan.md design.md implementation_plan.md decision_log.md gtm_plan.md; do
  if [ ! -f "docs/$doc" ]; then
    cp "$TEMPLATE_DIR/docs/$doc" docs/
    echo "  ✓ docs/$doc"
  else
    echo "  ⏭ docs/$doc (already exists)"
  fi
done

echo ""
echo "✅ Expert Panel added!"
echo ""
echo "Run 'claude' to start"
echo ""
