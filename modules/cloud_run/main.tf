resource "google_cloud_run_v2_service" "service" {
  name     = var.service_name
  location = var.region
  project  = var.project_id

  template {
    containers {
      image = var.image_uri

      env {
        name = "OPENWEATHER_API_KEY"
        value_source {
          secret_key_ref {
            secret  = var.openweather_secret_name
            version = "latest"
          }
        }
      }
    }
  }

  ingress = "INGRESS_TRAFFIC_ALL"
}
