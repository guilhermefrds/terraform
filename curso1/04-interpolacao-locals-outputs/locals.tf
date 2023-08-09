locals {
  ip_filepath = "ips.json"

  common_tags = {
    Service      = "curso terraform"
    ManagedBy    = "terraform"
    Envinronment = var.envinronment
    Owner        = "Guilherme Fernandes"
  }

  application_json = "application/json"
}