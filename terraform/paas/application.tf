resource "cloudfoundry_app" "app_application" {
    name =  var.paas_app_application_name
    space = data.cloudfoundry_space.space.id
    docker_image = var.paas_app_docker_image
    routes {
        route = cloudfoundry_route.app_route.id
    }    
    environment = {
        HTTPAUTH_PASSWORD = var.HTTPAUTH_PASSWORD
        HTTPAUTH_USERNAME = var.HTTPAUTH_USERNAME
        RAILS_MASTER_KEY  = var.RAILS_MASTER_KEY
        RAILS_ENV         = var.RAILS_ENV
    }    
}

resource "cloudfoundry_route" "app_route" {
    domain = data.cloudfoundry_domain.cloudapps.id
    space = data.cloudfoundry_space.space.id
    hostname =  var.paas_app_route_name
}



