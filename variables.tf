variable "bucket_name" {
  type = set(string)
  # default = ""
}
variable "org-name" {
  type    = string
  default = "my-company"
}
variable "enviornement" {
  type    = string
  default = "dev"
}