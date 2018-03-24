variable "region" {
    description = "aws region"
}

variable "prefix" {
    description = "naming prefix for application"
}

variable "instance_type" {
    description = "environment instance type"
    default     = "t2.micro"
}