provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

# Pull image from GitHub Container Registry (GHCR)
resource "docker_image" "app" {
  name = "ghcr.io/khalidtarek77/node-hello:216e55fffa16538415ffad1a8108b9035e717bc0"
}

# Run container from pulled image
resource "docker_container" "app" {
  name  = "node-hello-app"
  image = docker_image.app.image_id
  ports {
    internal = 3000   # app port inside container
    external = 3000   # exposed port on your machine
  }
  restart = "always"
}
