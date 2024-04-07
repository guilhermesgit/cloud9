resource "aws_cloud9_environment_ec2" "example" {
  instance_type   = var.instance_type
  name            = var.name
  image_id        = var.image_id
  connection_type = var.connection_type
  owner_arn       = var.owner_arn

  tags = {
    Ambiente = var.Ambiente
  }

}