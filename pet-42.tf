resource "null_resource" "pet-42" {
  for_each = toset([for pet in range(1, 1000): tostring(pet)])
}
