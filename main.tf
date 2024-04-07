module "cloud9" {
  source          = "./modules/cloud9"
  instance_type   = "t2.micro"
  name            = "Dev-01"
  image_id        = "amazonlinux-2023-x86_64"
  Ambiente        = "Desenvolvimento"
  connection_type = "CONNECT_SSM"
  owner_arn       = "arn:aws:iam::${var.accountid}:${var.accountname}"

}


