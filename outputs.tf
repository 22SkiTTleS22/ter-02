# Объявите в файле outputs.tf один output , содержащий: instance_name, 
# external_ip, fqdn для каждой из ВМ в удобном лично для вас формате.

output "output" {
  value = {
    web_name = yandex_compute_instance.platform.name
    web_ip = yandex_compute_instance.platform.network_interface[0].nat_ip_address
    web_fqdn = yandex_compute_instance.platform.fqdn
    db_name = yandex_compute_instance.platform2.name
    db_ip = yandex_compute_instance.platform2.network_interface[0].nat_ip_address
    db_fqdn = yandex_compute_instance.platform2.fqdn
  }
}