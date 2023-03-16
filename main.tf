provider "aws" {
  region = "us-west-2"
}

variable "user_names" {
  type    = list(any)
  default = ["RON", "SOU", "KYLE", "CHARALES"]

}

resource "aws_iam_user" "lb" {
  name  = var.user_names[count.index]
  count = 4
  path  = "/system/"
}
