variable "region" {
  description = "region"
  type        = string
  default     = "us-east-1"
}

variable "amiUbuntu22-04" {
  description = "Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2022-12-01"
  type        = string
  default     = "ami-0574da719dca65348"
}

variable "amiUbuntu20-04" {
  description = "Canonical, Ubuntu, 20.04 LTS, amd64 focal image build on 2022-12-01"
  type        = string
  default     = "ami-0a6b2839d44d781b2"
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}
