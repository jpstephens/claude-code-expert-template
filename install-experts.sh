#!/bin/bash

# Expert Panel Installer for Claude Code
# Run this from any project: curl -s https://raw.githubusercontent.com/jpstephens/claude-code-expert-template/main/install-experts.sh | bash

set -e

REPO="https://raw.githubusercontent.com/jpstephens/claude-code-expert-template/main"

echo "🧠 Installing Expert Panel..."

# Create .claude/roles directory
mkdir -p .claude/roles

# Download CLAUDE.md
curl -s "${REPO}/CLAUDE.md" > CLAUDE.md

# Download all expert roles
EXPERTS=(
  "product_manager"
  "ux_designer"
  "ui_designer"
  "branding_expert"
  "copywriter"
  "marketing_lead"
  "seo_expert"
  "security_engineer"
  "qa_engineer"
  "engineering_lead"
  "cfo"
)

for expert in "${EXPERTS[@]}"; do
  curl -s "${REPO}/.claude/roles/${expert}.md" > ".claude/roles/${expert}.md"
  echo "  ✓ ${expert}"
done

# Download doc templates
mkdir -p docs
curl -s "${REPO}/docs/project_plan.md" > docs/project_plan.md
curl -s "${REPO}/docs/design.md" > docs/design.md
curl -s "${REPO}/docs/implementation_plan.md" > docs/implementation_plan.md
curl -s "${REPO}/docs/decision_log.md" > docs/decision_log.md
curl -s "${REPO}/docs/gtm_plan.md" > docs/gtm_plan.md
echo "  ✓ doc templates"

echo ""
echo "✅ Expert Panel installed!"
echo ""
echo "Run 'claude' to start, then try:"
echo "  • 'Run a full expert panel review of this project'"
echo "  • 'Have Alex (Security) audit this codebase'"
echo "  • 'Gate 1 review: Is this problem worth solving?'"
echo ""
