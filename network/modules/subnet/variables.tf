variable "env" {
  description = "Environment resouce name"
  type        = string
  default     = ""
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "VPC identifier for subnets"
  type        = string
  default     = ""
}
