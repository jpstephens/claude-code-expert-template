# Setup Guide: Expert Panel Template for Claude Code

## Part 1: Initial Setup (One Time)

### Step 1: Create the Template Repository on GitHub

1. Go to [github.com/new](https://github.com/new)
2. Name it: `claude-code-expert-template`
3. Description: "Expert panel system for Claude Code projects"
4. Make it **Public** (or Private if you prefer)
5. Check "Add a README file"
6. Click **Create repository**

### Step 2: Clone and Setup Locally

Open your terminal:

```bash
# Navigate to where you keep projects
cd ~/Projects  # or wherever you prefer

# Clone the empty repo
git clone https://github.com/YOUR_USERNAME/claude-code-expert-template.git

# Enter the directory
cd claude-code-expert-template
```

### Step 3: Unzip the Template Files

```bash
# Assuming you downloaded the zip to Downloads
unzip ~/Downloads/claude-code-expert-template.zip

# Move contents up one level (the zip creates a subfolder)
mv claude-code-template/* .
mv claude-code-template/.claude .
rm -rf claude-code-template

# Verify structure
ls -la
# Should show: CLAUDE.md, README.md, docs/, .claude/
```

### Step 4: Commit and Push to GitHub

```bash
# Stage all files
git add .

# Commit
git commit -m "Initial expert panel template"

# Push to GitHub
git push origin main
```

### Step 5: Make it a GitHub Template (Optional but Recommended)

1. Go to your repo on GitHub
2. Click **Settings**
3. Check **Template repository**
4. Now you can create new projects from this template with one click

---

## Part 2: Using the Template for New Projects

### Option A: Using GitHub Template (If you did Step 5)

1. Go to your template repo on GitHub
2. Click **Use this template** → **Create a new repository**
3. Name your new project
4. Clone it locally: `git clone https://github.com/YOUR_USERNAME/new-project.git`
5. Run Claude Code: `cd new-project && claude`

### Option B: Manual Copy

```bash
# Create new project folder
mkdir ~/Projects/my-new-project
cd ~/Projects/my-new-project

# Copy template files
cp -r ~/Projects/claude-code-expert-template/* .
cp -r ~/Projects/claude-code-expert-template/.claude .

# Initialize git
git init
git add .
git commit -m "Initial commit from expert template"

# Create GitHub repo and push (or use gh cli)
gh repo create my-new-project --public --source=. --push
```

### Option C: Using Claude Code to Set It Up

Start Claude Code and say:
```
Clone my expert panel template from https://github.com/YOUR_USERNAME/claude-code-expert-template 
into a new project called [PROJECT_NAME], then initialize it for my new project.
```

---

## Part 3: Starting a New Project with the Discovery Process

Once you have a project set up with the template, start Claude Code:

```bash
cd ~/Projects/my-new-project
claude
```

Then use the **Project Kickoff Prompt** (see next file) to trigger the expert discovery process.

---

## Quick Reference Commands

```bash
# Create new project from template (after setup)
gh repo create PROJECT_NAME --template YOUR_USERNAME/claude-code-expert-template --public --clone

# Or manually
mkdir PROJECT_NAME && cd PROJECT_NAME
cp -r ~/Projects/claude-code-expert-template/{*,.claude} .
git init && git add . && git commit -m "Initial commit"

# Start Claude Code
claude
```

---

## Troubleshooting

### "claude" command not found
Install Claude Code: `npm install -g @anthropic-ai/claude-code`

### .claude folder not copying
Use `cp -r` with explicit `.claude`: `cp -r template/.claude .`

### Git not tracking .claude folder
The folder should be tracked. Check `.gitignore` isn't excluding it.

### Template not loading in Claude Code
Ensure `CLAUDE.md` is in the project root. Claude Code auto-reads this file.
