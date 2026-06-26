# DevOps Interview Preparation

Interview preparation hub — scenario-based Q&A, diagrams, and links to hands-on DevOps projects.

## Interview guide

📖 **[INTERVIEW-QA.md](./INTERVIEW-QA.md)** — 40+ scenario-based questions with answers, mermaid diagrams, and commands tied to real projects.

Topics covered:
- CI/CD & GitOps
- Docker & Kubernetes troubleshooting
- ArgoCD & Kustomize overlays
- Terraform & AWS EKS
- Prometheus/Grafana incident response
- DevSecOps scenarios
- Mock interview round

---

## Hands-on projects (separate repos)

These projects are **not duplicated here** — clone them individually:

### 1. [express-api](https://github.com/laxmanperi1/express-api)

Node.js REST API with full DevOps stack.

| Area | Tech |
|------|------|
| App | Node.js, Express, Pino logging, Prometheus metrics |
| Container | Multi-stage Docker, non-root user, dumb-init |
| Kubernetes | Kustomize base + dev/prod overlays, probes, NetworkPolicy |
| GitOps | ArgoCD app-of-apps from GitHub |
| Monitoring | Prometheus, Grafana, Alertmanager, CPU alerts |
| CI/CD | GitHub Actions (test, Trivy scan, manifest validation) |

```bash
git clone https://github.com/laxmanperi1/express-api.git
cd express-api
npm install && npm test
kubectl apply -k deploy/overlays/dev
```

### 2. [eks-terraform](https://github.com/laxmanperi1/eks-terraform)

AWS EKS cluster with VPC, managed node group, and security hardening.

| Component | Details |
|-----------|---------|
| VPC | Public/private subnets, NAT, flow logs |
| EKS | Managed node group, KMS encryption, audit logging |
| Security | IMDSv2, configurable API endpoint CIDRs |

```bash
git clone https://github.com/laxmanperi1/eks-terraform.git
cd eks-terraform
terraform init && terraform plan
```

---

## This repo contains

```
.
├── README.md           # This file — project links
├── INTERVIEW-QA.md     # Scenario-based interview Q&A with diagrams
└── push-to-github.sh   # Helper script
```

---

## Skills demonstrated (across all projects)

- **Containers & Docker** — Multi-stage builds, image scanning, health checks
- **Kubernetes** — Deployments, Services, Ingress, TLS, PDB, NetworkPolicy
- **GitOps** — ArgoCD Applications, Kustomize overlays, automated sync
- **Observability** — Metrics, dashboards, alerting rules
- **IaC** — Terraform modules for AWS EKS
- **CI/CD** — GitHub Actions pipelines
- **Security** — Non-root containers, secrets management, DevSecOps hardening

---

## Author

**laxmanperi1** — [GitHub](https://github.com/laxmanperi1)
