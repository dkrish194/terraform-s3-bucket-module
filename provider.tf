terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0" # aws version
    }
  }
  required_version = "~> 1.8" # ~> terraform version ,consider for patch and minor version upgrade not major

  backend "s3" {
    # bucket name
    # key in that bucket
    # use lock
    # region,

    bucket       = "roboshop-dev-krishna"
    key          = "import"
    use_lockfile = true
    region       = "us-east-1"
    encrypt      = false
  }

}