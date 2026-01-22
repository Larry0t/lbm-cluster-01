terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "eks_cluster" {
  source = "git::https://github.com/Larry0t/platform-automation.git//terraform/eks-cluster?ref=v0.1.1"


  cluster_name    = var.cluster_name
  vpc_cidr        = var.vpc_cidr
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  cluster_version = var.cluster_version
  eks_managed_node_groups = var.eks_managed_node_groups
  tags            = var.tags
}
