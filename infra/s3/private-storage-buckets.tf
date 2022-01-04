module "links-nickmacioce" {
  source = "../../modules/private-storage-bucket"

  bucket-name = "macioce-home-k8s-longhorn-backups"

  tags = {
    Application = "Longhorn"
    Location    = "Homelab"
    Platform    = "k8s"
  }
}