# ##########################
# #     ELASTIC IP         #
# ##########################

# resource "aws_eip" "sacode" {
#   instance = aws_instance.sacode.id
#   vpc      = true

# tags = {
#   Name = "sacode-eip"
#   }
# }

# #########################
# #   RESOURCES sacode    #
# #########################

# resource "aws_instance" "sacode" {
# ami = var.ami
# instance_type = "t3.medium"
# associate_public_ip_address = !var.public_ip
# vpc_security_group_ids = [ aws_security_group.sacode-sg.id ]
# key_name  = var.key
# subnet_id = var.public_a

# disable_api_termination = var.termination

# ##############################
# #     Root Disk sacode       #
# ##############################

# root_block_device {
# volume_size = 20
# delete_on_termination = false
# volume_type = var.root_disk_type
#     tags = {
#       Name = "sacode"
#      }
# }

# tags = {
#   Name = "sacode"
#  }
# }

# ##########################
# #     Instance IP        #
# ##########################
# output "sacode_public_ip" {
#     value = aws_instance.sacode.public_ip
# }
# output "sacode_private_ip" {
#     value = aws_instance.sacode.private_ip
# }