variable "packer_username" {
  type = string
}

variable "packer_password" {
  type = string
}

variable "packer_password_hashed" {
  type = string
}

//variable "packer_authorized_key" {
//  type = string
//  default = ""
//}

variable "ssh_password" {
  type = string
}

variable "ssh_password_hashed" {
  type = string
}

variable "ssh_username" {
  type = string
  default = "root"
}

//variable "ssh_authorized_key" {
//  type = string
//  default = ""
//}

variable "vcenter_username" {
  type = string
}

variable "vcenter_password" {
  type = string
}

variable "vcenter_server" {
  type = string
}

variable "vcenter_folder" {
  type = string
  default = "Alpine/3.16/x86_64"
}

variable "vsphere_host" {
  type = string
}

variable "vsphere_network" {
  type = string
  default = "VM Network"
}

variable "vsphere_datastore" {
  type = string
  default = "datastore1"
}

variable "iso_path_prefix" {
  type = string
  default = "[mirrors] alpine/"
}

variable "iso_path" {
  type = string
  default = "v3.16/releases/x86_64/alpine-extended-3.16.0-x86_64.iso"
}

variable "processor_count" {
  type = number
  default = 1
}

variable "processor_cores" {
  type = number
  default = 2
}

variable "RAM" {
  type = number
  default = 4096
}

variable "disk_size" {
  type = number
  default = 32768
}

variable "hostname" {
  type = string
  default = "alpine-316-x86_64"
}
