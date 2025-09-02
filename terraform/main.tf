provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

# Pull image from GitHub Container Registry (GHCR)
resource "docker_image" "app" {
  name = "ghcr.io/khalidtarek77/node-hello:38e9c7a65b11de20a061b0788825d832f758c63f"
}

# Run container from pulled image
resource "docker_container" "app" {
  name  = "node-hello-app"
  image = docker_image.app.image_id
  env = [
    "NEW_RELIC_LICENSE_KEY=eu01xxc2c40de70a6c66f92ca82aeb38FFFFNRAL"
  ]
  ports {
    internal = 3000   # app port inside container
    external = 3000   # exposed port on your machine
  }
  restart = "always"
}
