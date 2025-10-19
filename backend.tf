terraform {
  backend "s3" {
    profile      = "project_lab_1"
    bucket       = "tfstate-848955332034-project-lab-1"
    key          = "project_lab_1/main/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
    encrypt      = true
  }
}

