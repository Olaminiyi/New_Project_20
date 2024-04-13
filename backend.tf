terraform {
  backend "remote" {
    organization = "Olami"

    workspaces {
      name = "Project-20"
    }
  }
}

