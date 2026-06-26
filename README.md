# DevOps Interview Preparation

Portfolio repository covering core DevOps skills: containerization, Kubernetes, GitOps, monitoring, infrastructure as code, and CI/CD.

## Projects

### 1. Express API (`express-api/`)

Node.js REST API with production-ready DevOps practices.

| Area | Tech |
|------|------|
| App | Node.js, Express, Pino logging, Prometheus metrics |
| Container | Multi-stage Docker, non-root user, dumb-init |
| Kubernetes | Kustomize base + dev/prod overlays, probes, NetworkPolicy |
| GitOps | ArgoCD app-of-apps from GitHub |
| Monitoring | Prometheus, Grafana, Alertmanager, CPU alerts |
| CI/CD | GitHub Actions (test, Trivy scan, manifest validation) |

**Quick start:**
```bash
cd express-api
npm install && npm test
docker build -t express-api:1.0.0 .
kubectl apply -k deploy/overlays/dev
```

### 2. EKS Terraform (`eks-terraform/`)

AWS EKS cluster with VPC, managed node group, and security hardening.

| Component | Details |
|-----------|---------|
| VPC | Public/private subnets, NAT, flow logs |
| EKS | Managed node group, KMS encryption, audit logging |
| Security | IMDSv2, configurable API endpoint CIDRs |

**Quick start:**
```bash
cd eks-terraform
terraform init
terraform plan
terraform apply
```

## Skills demonstrated

- **Containers & Docker** — Multi-stage builds, image scanning, health checks
- **Kubernetes** — Deployments, Services, Ingress, TLS, PDB, NetworkPolicy
- **GitOps** — ArgoCD Applications, Kustomize overlays, automated sync
- **Observability** — Metrics, dashboards, alerting rules
- **IaC** — Terraform modules for AWS EKS
- **CI/CD** — GitHub Actions pipelines
- **Security** — Non-root containers, secrets management, DevSecOps hardening

## Repository structure

```
.
├── express-api/          # Full-stack app + K8s + ArgoCD + monitoring
│   ├── src/              # Application code
│   ├── deploy/           # Kustomize base + dev/prod overlays
│   ├── argocd/           # ArgoCD Application manifests
│   ├── monitoring/       # Prometheus/Grafana config
│   └── .github/          # CI workflows
└── eks-terraform/        # AWS EKS infrastructure
```

## Author

**laxmanperi1** — [GitHub](https://github.com/laxmanperi1)
