resource "aws_instance" "cicd" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.cicd.name]
  tags = {
    Name = "cicd"
  }
  key_name  = var.key_name
  user_data = base64encode(file("${path.module}/bash/install-packages.sh"))

}

resource "aws_security_group" "cicd" {
  name        = var.sg_name
  description = var.sg_description

  ingress {
    description = "Allow ssh from everywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Open port for Jenkins"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    description = "Open port for Sonarqube"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}