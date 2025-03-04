output "resource_group" {
  value = module.network.resource_group_name
}

output "vmip" {
  value = module.network.vm_public_ip
}

output "aks_name" {
  value = module.aks.aks_name
}

output "aks_fqdn" {
  value = module.aks.aks_fqdn
}

output "aks_private_fqdn" {
  value = module.aks.aks_private_fqdn
}

output "aks_kubeconfig" {
  value = module.aks.aks_kubeconfig
  sensitive = true
}
