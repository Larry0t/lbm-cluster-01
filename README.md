# gitops-lbm-cluster-01

GitOps starter repository tailored for:
- Cloud: AWS (EKS)
- Region: eu-central-1
- Cluster name: lbm-cluster-01
- GitOps: Argo CD
- CI: GitHub Actions (Terraform + optional ArgoCD triggers)

**Important next steps (before running workflows):**
1. Create or choose a VPC and subnets in AWS and set `vpc_id` and `subnet_ids` in Terraform variables (or extend Terraform to create them).
2. Add these GitHub repository secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `AWS_REGION` (set to `eu-central-1`)
   - (Optional, for Argo CD CLI sync) `ARGOCD_SERVER` and `ARGOCD_PASSWORD` or `ARGOCD_TOKEN`
3. Review `infrastructure/terraform/variables.tf` and update any defaults if desired.
4. Replace `repoURL` in `argocd/app-of-apps.yaml` with your repository URL after you push this repo.

This repo contains:
- `infrastructure/terraform` — Terraform that provisions an EKS cluster (uses the terraform-aws-modules/eks/aws module).
- `argocd` — Argo CD bootstrap and App-of-Apps manifest.
- `clusters/staging` — Example NGINX app (Kustomize layout).
- `.github/workflows` — GitHub Actions workflows for Terraform and ArgoCD sync.

Happy GitOps! 🚀
