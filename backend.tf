terraform {
  backend "gcs" {
    bucket  = "hopeful-list-446012-q4-tf-state"
    prefix  = "weather-app"
  }
}
