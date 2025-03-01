variable "google_project_id" {
  description = "- (Required)  Google account project id."
}
variable "google_region" {
  type = "string"
  description = "- (Required) Google region where the cluster will be deployed."
}
variable "cluster_version" {
  type = "string"
  description = "- (Required) Version of the cluster."
}
variable "cluster_node_count" {
  type = "string"
  description = "- (Required) Number of nodes for the cluster."
}
variable "google_credentials" {
  type = "string"
  description = "- (Required) your google service account `example.json`"
}
variable "cluster_network" {
  type = "string"
  default = "default"
  description = "- (Optional) The name or self_link of the Google Compute Engine network to which the cluster is connected. For Shared VPC, set this to the self link of the shared network."
}
variable "cluster_name" {
  type = "string"
  description = "- (Required) The name of the cluster, unique within the project and location."
}

variable "subnetwork" {
  type = "string"
  default = "default"
  description = "- (Optional) The name or self_link of the Google Compute Engine subnetwork in which the cluster's instances are launched."
}

variable "machine_type" {
  type = "string"
  default = "n1-standard-2"
  description = "- (Optional) The name of a Google Compute Engine machine type. Defaults to n1-standard-1. "
}

variable "labels" {
  description = "Key Value Pairs of Labels to add to the nodes in the pool"
  type        = "map"
  default = {
    labels = "fuchicorp-project"
    }
}

variable "disk_size_in_gb" {
  description = "Disk size, in GB, for the nodes in the pool."
  default     = "10"
}

variable "image_type" {
  default = "COS"
  description = "image type"
}
variable "auto_repair" {
  description = "Whether the nodes will be automatically repaired"
  default     = true
}

variable "auto_upgrade" {
  description = "Whether the nodes will be automatically upgraded"
  default     = false
}
variable "preemptible_nodes" {
  description = "Whether to use preemptible nodes"
  default     = false
}
variable "node_pool" {
  description = "name of node pool"
  default     = "default-pool"
}











