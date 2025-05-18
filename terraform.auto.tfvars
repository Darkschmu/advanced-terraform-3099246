environment_instance_settings {
#  type = map(any)
  type = map(object({machine_type=string, labels=map(string)}))
  default = {
    "DEV" = {
      machine_type = "f1-micro"
      labels = {
        environment = "dev"
      }
    },
   "QA" = {
      machine_type = "e2-micro"
      labels = {
        environment = "qa"
      }
    },
    "STAGE" = {
      machine_type = "e2-micro"
      labels = {
        environment = "stage"
      }
    },
    "PROD" = {
      machine_type = "e2-medium"
      labels = {
        environment = "prod"
      }
    }
  }
}