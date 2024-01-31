#Global variable
variable "project_name" {
}
variable "env" {
}
variable "resource_group_name" {
}
variable "location" {
}
variable "owner" {
}
variable "vnet_name" {
}
# Define ACR
variable "acr_name" {
  type        = string
}
variable "acr_sku" {
  type        = string
}
#Storage Account
variable "sa_name" {
  type        = string
}
variable "web_static_name" {
  type        = string
  default     = staticwebsite
}

variable "index_document" {
  type        = string
  default     = "index.html"
}
variable "source_content" {
  type        = string
  default     = "<h1>Hello, this is test</h1>"
}

# Redis
variable "redis_cache_name" {
  type        = string
  default     = "newadstg-redis"
}
