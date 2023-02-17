##########################
# Security Group sacode  #
##########################

resource "aws_security_group" "sacode-sg" {
name        = "sacode-sg"
description = "Allow sacode traffics"
vpc_id      = module.vpc.vpc_id

  ingress = [
{
    description      = "Allow All"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["146.70.83.69/32"]
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    security_groups = []
    self = false
},
{
    description      = "Allow http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    security_groups = []
    self = false
},
]

  egress = [
    {
      description      = "for all outgoing traffics"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]

  tags = {
    Name = "sacode-sg"
  }
}