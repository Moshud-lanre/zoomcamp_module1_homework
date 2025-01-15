variable "credentials" {
  description = "My Credentials"
  default     = "./project_cred.json"

}

variable "project" {
  description = "Project"
  default     = "alt-capstone"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default = "us-central1"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default = "us-central1"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  #Update the below to what you want your dataset to be called
  default = "zoomcamp_demo"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  #Update the below to a unique bucket name
  default = "terraform-demo-bucket-2347"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}