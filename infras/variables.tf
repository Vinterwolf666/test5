variable "credentials" {
  description = "Google Cloud service account credentials in JSON format"
  type        = string
}

variable "region" {
  description = "La región donde se desplegará el clúster de GKE"
  type        = string
  default     = "southamerica-east1"
}

variable "cluster_name" {
  description = "El nombre del clúster de GKE"
  type        = string
  default     = "clus688"
}

variable "artifact_registry_region" {
  description = "Región para el Artifact Registry"
  type        = string
  default     = "southamerica-east1"
}

variable "artifact_registry" {
  description = "Nombre del Artifact Registry"
  type        = string
  default     = "repo688"
}

