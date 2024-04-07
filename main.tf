
module "cloud9" {
  source          = "./modules/cloud9"
  instance_type   = var.instance_type
  name            = var.name
  image_id        = var.image_id
  Ambiente        = var.accountname
  connection_type = var.connection_type
  owner_arn       = "arn:aws:iam::${var.accountid}:${var.accountname}"

}
