module "artifact_registry" {
  source     = "../../modules/artifact_registry"
  project_id = var.project_id
  region     = var.region
  repo_name  = "weather-app"
}

module "cloud_run" {
  source                   = "../../modules/cloud_run"
  project_id               = var.project_id
  region                   = var.region
  service_name             = var.service_name
  image_uri                = var.image_uri
  openweather_secret_name  = var.openweather_secret_name
}

