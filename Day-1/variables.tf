variable "cidr" {
  default = "10.0.0.0/16"
}

variable "ami_value" {
  description = "value"
  type = string
  default = "ami-091138d0f0d41ff90"
}

variable "instance_type_value" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t3.micro"
    "stage" = "t3.medium"
    "prod" = "t3.xlarge"
  }
}

variable "dev_instances" {
  description = "Map of dev instances"
  type        = map(string)
  default     = {}
}