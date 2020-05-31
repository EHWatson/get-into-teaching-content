# These settings are for the sandbox and should mainly be overriden by TF_VARS 
# or set with environment variables TF_VAR_xxxx

variable user {
    default = "get-into-teaching-tech@digital.education.gov.uk"
}

variable api_url {
     default = "https://api.london.cloud.service.gov.uk"
}

variable password {}


variable "paas_space" {
   default = "sandbox"
}

variable "paas_org_name" {
   default = "dfe-teacher-services"
}

variable "paas_app_application_name" {
   default = "dfe-teacher-services-app"
}

variable "paas_app_docker_image" {
   default = "dfedigital/get-into-teaching-frontend:latest"
}

variable "paas_app_route_name" {
   default = "get-into-teaching-app-test"
}

variable "HTTPAUTH_PASSWORD" {}
variable "HTTPAUTH_USERNAME" {}
variable "RAILS_MASTER_KEY" {}
variable "RAILS_ENV" {
   default = "production"
}
