variable "region" {
  default     = "eu-central-1"
  description = "AWS region"
}

################
#  SSH Access  #
################

variable "key" {
  type = string
  default = "sacode"
}

variable "ssh_user" {
  type = string
  default = "ubuntu"
}

###############
#  Public IP  #
###############

variable "public_ip" {
  type = string
  default = false
}

#######################
# Secure Termination  #
#######################
#Note: False jika ingin instance dapat dihapus, True jika ingin instance diprotect sehingga tidak dapat dihapus

variable "termination" {
  type = string
  default = false
}

####################
#  Root Disk Type  #
####################

variable "root_disk_type" {
  type = string
  default = "gp2"
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
  default     = []
}

#########
#  AMI  #
#########
#AMI setiap region berbeda-beda silahkan dicek disini https://cloud-images.ubuntu.com/locator/ec2/
variable "ami" {
  type = string
  default = "ami-0ad9796167d61b7ae"
}

############
#  Subnet  #
############

variable "public_a" {
  type = string
  default = ""
}