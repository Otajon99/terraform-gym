
module "dev_website" {
  source = "./modules/s3-website"

  bucket_name = "acme-marketing-dev-otajon99"  # Replace YOURNAME!
  environment = "dev"

  site_content = {
    heading          = "Development Preview"
    message          = "This is the internal development environment for testing new designs."
    background_color = "#e3f2fd"
    badge_color      = "#1976d2"
  }

  tags = {
    Team    = "marketing"
    Project = "campaign-preview"
  }
}
