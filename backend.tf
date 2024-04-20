terraform {
  backend "remote" {
    organization = "Olami"

    workspaces {
      name = "Migration_to_the_Cloud_with_Containerisatio" # New_Project_20
    }
  }
}

