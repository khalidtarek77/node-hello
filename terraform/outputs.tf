output "container_name" {
  value = docker_container.app.name
}

output "image_used" {
  value = docker_image.app.name
}