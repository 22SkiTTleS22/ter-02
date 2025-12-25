# Объявите в файле outputs.tf один output , содержащий: instance_name, 
# external_ip, fqdn для каждой из ВМ в удобном лично для вас формате.

output "output" {
  value = {
    name1 = yandex_compute_instance.vm_db_name
    ip1 = yandex_compute_instance.vm_db_name.network_interface[0].nat_ip_address
    fqdn = yandex_compute_instance.platform
    name2 = yandex_compute_instance.vm_web_name
    ip2 = yandex_compute_instance.vm_web_name.network_interface[0].nat_ip_address
  }
}