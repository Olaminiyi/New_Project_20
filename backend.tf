terraform {
  backend "remote" {
    organization = "Olami"

    workspaces {
      name = "New_Project_20"
    }
  }
}

