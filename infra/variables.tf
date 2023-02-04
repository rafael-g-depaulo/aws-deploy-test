variable "github_access_token" {
  type        = string
  description = "token to use github provider"
}

variable "github_main_branch" {
  type        = string
  description = "main branch used for deploy"
  default     = "main"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "default aws region resources are created at"
}

variable "aws_admin_access_key" {
  type        = string
  description = "access key for aws admin"
}

variable "aws_admin_secret_key" {
  type        = string
  description = "secret for aws admin"
}
