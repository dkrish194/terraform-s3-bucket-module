variable "bucket_name" {
  type = set(string)
  # default = ""
}
variable "org-name" {
  type    = string
  default = "mycompany"
}

variable "project" {
  type = string

}
variable "enviornement" {
  type    = string
  # default = "dev"
}