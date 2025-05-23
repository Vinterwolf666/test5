provider "google" {
  credentials = var.credentials # Usa la clave JSON de la cuenta de servicio
  project     = var.project_id
  region      = "us-east1"
}

variable "project_id" {
  default = "spiderops"
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  enable_autopilot = true

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 10
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

resource "google_artifact_registry_repository" "repo" {
  provider      = google
  project       = var.project_id
  location      = var.artifact_registry_region
  repository_id = var.artifact_registry
  format        = "DOCKER"
}
