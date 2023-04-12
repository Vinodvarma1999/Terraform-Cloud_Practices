variable "token" {
 type         = string
 description  = "This token is used to deploy resource on terraform cloud"
}

variable "db_username" {
  type        = string
  description = "A sensitive variable"
}
