#!/bin/bash

DEFAULT_DIR=~/scripts
BRANCH="main"
TIMEOUT=14  # Timeout duration in seconds

# Prompt user to select a directory with a 14-second timeout
echo "📂 Enter the directory to scan for repositories (default: $DEFAULT_DIR)"
echo "⏳ If no input is provided, it will default in $TIMEOUT seconds..."
read -t "$TIMEOUT" -rp "Or press Enter to use default: " SCRIPTS_DIR

# Use default if input is empty or timed out
SCRIPTS_DIR=${SCRIPTS_DIR:-$DEFAULT_DIR}

# Expand ~ to full home path in case of manual entry
SCRIPTS_DIR=$(eval echo "$SCRIPTS_DIR")

# Validate directory
if [ ! -d "$SCRIPTS_DIR" ]; then
    echo "❌ Directory does not exist: $SCRIPTS_DIR"
    exit 1
fi

# Find all directories that contain a .git folder
REPOS=($(find "$SCRIPTS_DIR" -type d -name ".git" -prune | sed 's|/.git||g'))

if [ ${#REPOS[@]} -eq 0 ]; then
    echo "❌ No Git repositories found under $SCRIPTS_DIR"
    exit 1
fi

# Display the list of repositories
echo "📂 Select a repository to sync:"
for i in "${!REPOS[@]}"; do
    echo "$((i+1))) ${REPOS[$i]}"
done

# Get user selection
read -rp "Enter the number of the repository: " CHOICE
if [[ ! "$CHOICE" =~ ^[0-9]+$ ]] || (( CHOICE < 1 || CHOICE > ${#REPOS[@]} )); then
    echo "❌ Invalid selection."
    exit 1
fi

# Get the selected repo
REPO_DIR="${REPOS[$((CHOICE-1))]}"

echo "🔄 Navigating to repo: $REPO_DIR"
cd "$REPO_DIR" || { echo "❌ Failed to find repo"; exit 1; }

echo "🔄 Fetching latest changes from GitHub..."
git fetch origin "$BRANCH"

# Check for local changes
if ! git diff --quiet || ! git diff --staged --quiet; then
    echo "💾 Stashing local changes..."
    git stash
    STASHED=true
else
    STASHED=false
fi

echo "📥 Pulling latest changes from GitHub..."
if git pull origin "$BRANCH" --rebase; then
    echo "✅ Successfully pulled latest changes."
else
    echo "⚠️ Merge conflict detected! Manually resolve and re-run the script."
    exit 1
fi

# If we stashed local changes, apply them back
if [ "$STASHED" = true ]; then
    echo "♻️ Applying stashed local changes..."
    git stash pop || echo "⚠️ No stashed changes to apply."
fi

# Stage and commit if there are changes
if ! git diff --quiet || ! git diff --staged --quiet; then
    echo "📌 Staging changes..."
    git add .

    echo "📝 Committing changes..."
    git commit -m "Auto-sync from CN: $(date '+%Y-%m-%d %H:%M:%S')"

    echo "🚀 Pushing changes to GitHub..."
    git push origin "$BRANCH"

    echo "✅ Sync completed successfully!"
else
    echo "⚡ No new changes to commit."
fi
#
