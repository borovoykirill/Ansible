variable "Instance_count" {
  default = "3"
}

variable "Project_name" {
  default = "dev-001-project"
}

variable "Master_name" {
  default = "ansible-master"
}

variable "Node_name" {
  default = "ansible-node"
}

variable "Type_Machine" {
  default = "n1-standard-1"
}

variable "Region" {
  default = "us-central1"
}

variable "Zone" {
  default = "us-central1-c"
}

variable "Type_Disk" {
  default = "pd-ssd"
}

variable "Size_Disk" {
  default = "10"
}

variable "Image_OS" {
  default = "ubuntu-1604-xenial-v20200317"
}

variable "Network" {
  default = "default"
}

variable "OS_Family" {
  default = "ubuntu"
}

variable "WayOfInstallation" {
  default = "terraform"
}
