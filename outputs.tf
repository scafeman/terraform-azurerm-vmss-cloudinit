output "vmss_id" {
  value = "${azurerm_virtual_machine_scale_set.vmss-eus-web.*.id}"
}
