variable "location" {
  type = string
  default = "central India"
}

variable "rgname" {
  type = string
  default = "bw89rg"
}

variable "vnetname" {
  type = string
  default = "bw89vnet"
}

variable "cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnetname" {
  type = string
  default = "subnet-aks"
}

variable "subnetiprange" {
  type = string
  default = "10.0.1.0/24"
}

variable "security-rule" {
  type = list(object({
    name = string
    priority = number
    destination_port = string
  }))

  default = [ {
    name = "allow-ssh", priority = 1000, destination_port = "22"
  },
  {
    name = "allow-http", priority = 1001, destination_port = "80"
  },
  {
    name = "allow-https", priority = 1002, destination_port = "443"
  },
  {
    name = "allow-maven", priority = 1003, destination_port = "8080"
  },
  
  {
    name = "allow-kibana", priority = 1004, destination_port = "5601"
  } ]
}


variable "ssh_public_key" {
  description = "Public SSH key for VM access"
  type        = string
}
