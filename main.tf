provider "aws" {
    region = "us-east-1"
}

variable "vpc_cidr_block" {
    description = "vpc cidr block"
}

variable "environment" {
    description = "environment variable"
}

resource "aws_vpc" "develop-vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
        Name: var.environment
    }
}

variable subnet01_cidr_block {
  type        = string
  description = "subnet01 cidr block"
}

variable subnet02_cidr_block {
  type        = string
  description = "subnet02 cidr block"
}


resource "aws_subnet" "dev-subnet-01" {
    vpc_id = aws_vpc.develop-vpc.id
    cidr_block = var.subnet01_cidr_block
    availability_zone = "us-east-1a"
    tags = {
        Name: "dev-subnet-01"
    }
} 

resource "aws_subnet" "dev-subnet-02" {
    vpc_id = aws_vpc.develop-vpc.id
    cidr_block = var.subnet02_cidr_block
    availability_zone = "us-east-1a"
    tags = {
        Name: "dev-subnet-02"
    }
} 


output subnet01_cidr_block {
  value = aws_subnet.dev-subnet-01.cidr_block
}

output subnet02-cidr_block {
  value = aws_subnet.dev-subnet-02.cidr_block
}
