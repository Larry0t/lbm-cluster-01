provider "aws" {
  region = var.region
}

module "eks_cluster" {
  source = "git::https://github.com/Larry0t/platform-automation.git//terraform/eks-cluster?ref=v0.1.0"


  cluster_name    = var.cluster_name
  vpc_cidr        = var.vpc_cidr
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  cluster_version = var.cluster_version
  node_groups     = var.node_groups
  tags            = var.tags
}
