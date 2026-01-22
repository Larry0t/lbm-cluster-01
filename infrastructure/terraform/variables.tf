variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}

variable "cluster_version" {
  type    = string
  default = "1.30"
}

variable "eks_managed_node_groups" {
  type = any
}

variable "tags" {
  type = map(string)
}
