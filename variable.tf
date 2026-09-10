variable "ami" {
  description = "ami"
  type        = string
  default     = "ami-0729131ef01366759"
}

variable "instance_type" {
  description = "instance_type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "key pair"
  type        = string
  default     = "newapplication"
}

variable "environment" {
  description = "environment specified like testing, dev, and prod"
  type        = string
  default     = "dev"

}

variable "vpc_id" {
  description = "vpc"
  type        = string
  default     = "vpc-012f50d45daa804ee"

}