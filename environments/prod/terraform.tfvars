project_id  = "hopeful-list-446012-q4"
region      = "us-central1"

# 👇 different from dev
service_name = "weather-app-prod"

# same artifact registry, different tag (optional)
image_uri = "us-central1-docker.pkg.dev/hopeful-list-446012-q4/weather-app/weather:latest"

# secret (can be same or different)
openweather_secret_name = "openweather-api-key"
