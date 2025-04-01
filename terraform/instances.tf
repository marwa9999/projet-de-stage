locals {
  instances = [
    { name = "vm-ubuntu1", ip = "192.168.8.142" },
    { name = "Node-01",    ip = "192.168.8.147" },
    { name = "Node-02",    ip = "192.168.8.148" },
    { name = "Node-03",    ip = "192.168.8.149" },
  ]
}

resource "aws_instance" "nodes" {
  count                        = length(local.instances)
  ami                          = "ami-06e02ae7bdac6b938" # Ubuntu 22.04
  instance_type                = "t2.micro"
  subnet_id                    = aws_subnet.main_subnet.id
  private_ip                   = local.instances[count.index].ip
  vpc_security_group_ids       = [aws_security_group.main_sg.id]
  associate_public_ip_address  = true
  key_name                     = aws_key_pair.deployer_key.key_name

  tags = {
    Name = local.instances[count.index].name
  }
}