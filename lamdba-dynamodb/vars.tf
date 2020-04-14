variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
}


variable "table_name" {
  default = "AWSDATA"
}

variable "item_name" {
  default = ["ID", "vpcsInfo", "subnetInfo" ]
  
}
