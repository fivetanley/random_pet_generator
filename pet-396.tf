resource "null_resource" "pet-396" {
  for_each = toset([for pet in range(1, 1000): tostring(pet)])
}
