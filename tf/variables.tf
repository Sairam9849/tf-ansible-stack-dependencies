variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI"
  default     = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "Existing AWS key pair for SSH access"
  default     = "my-keypair-name" # Change this to your AWS key pair name
}
