resource "random_pet" "main" {
  count = var.random_pets_count
}

locals {
  random_pets = [ for i in range(var.random_pets_count): random_pet.main[i].id ]
}

output "random_pets" {
  value = local.random_pets
}