resource "ansible_host" "host" {
  name = local.vm_name
  variables = {
    ansible_host = azurerm_public_ip.my_terraform_public_ip.ip_address
    ansible_user = var.username
  }
}
