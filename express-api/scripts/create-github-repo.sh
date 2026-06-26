#!/usr/bin/env bash
set -euo pipefail

# Create a new GitHub repository and push local code.
#
# Usage:
#   ./scripts/create-github-repo.sh <repo-name> [path]
#
# Examples:
#   ./scripts/create-github-repo.sh eks-terraform ~/eks-terraform
#   ./scripts/create-github-repo.sh my-new-app .

REPO_NAME="${1:-}"
SOURCE_PATH="${2:-.}"

if [[ -z "${REPO_NAME}" ]]; then
  echo "Usage: $0 <repo-name> [source-path]"
  echo ""
  echo "Examples:"
  echo "  $0 eks-terraform ~/eks-terraform"
  echo "  $0 my-api ~/express-api"
  exit 1
fi

SOURCE_PATH="$(cd "${SOURCE_PATH}" && pwd)"

echo "==> Checking GitHub authentication..."
gh auth status

echo "==> Initializing git in ${SOURCE_PATH}..."
cd "${SOURCE_PATH}"

if [[ ! -d .git ]]; then
  git init -b main
fi

git add .
if git diff --cached --quiet; then
  echo "No changes to commit."
else
  git commit -m "Initial commit"
fi

echo "==> Creating GitHub repo: ${REPO_NAME}..."
gh repo create "${REPO_NAME}" \
  --public \
  --source=. \
  --remote=origin \
  --push

echo ""
echo "Repository created and pushed:"
gh repo view "laxmanperi1/${REPO_NAME}" --web 2>/dev/null || \
  echo "  https://github.com/laxmanperi1/${REPO_NAME}"
