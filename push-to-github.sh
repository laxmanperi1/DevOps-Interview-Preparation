#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="DevOps-Interview-Preparation"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "==> Checking GitHub auth..."
gh auth status

cd "${ROOT}"

if [[ ! -d .git ]]; then
  git init -b main
fi

git add .
git diff --cached --quiet || git commit -m "$(cat <<'EOF'
Initial commit: DevOps Interview Preparation portfolio

Includes express-api (Node.js, Docker, K8s, ArgoCD, monitoring)
and eks-terraform (AWS EKS with VPC and security hardening).
EOF
)"

echo "==> Creating GitHub repository: ${REPO_NAME}..."
gh repo create "${REPO_NAME}" \
  --public \
  --description "DevOps Interview Preparation — Docker, Kubernetes, GitOps, Terraform, CI/CD" \
  --source=. \
  --remote=origin \
  --push

echo ""
echo "Done! Repository URL:"
echo "  https://github.com/laxmanperi1/${REPO_NAME}"
