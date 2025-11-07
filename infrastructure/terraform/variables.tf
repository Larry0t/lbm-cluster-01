variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "lbm-cluster-01"
}

variable "vpc_id" {
  description = "VPC id for EKS"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "List of subnet ids (private or public) for EKS worker nodes"
  type        = list(string)
  default     = []
}
