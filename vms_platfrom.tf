###cloud vars

variable "default_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vpc_db_name" {
  type        = string
  default     = "develop_db"
  description = "VPC network & subnet name"
}

/* Замените все хардкод-значения для ресурсов yandex_compute_image и 
yandex_compute_instance на отдельные переменные. К названиям переменных ВМ 
добавьте в начало префикс vm_web_ . Пример: vm_web_name.

Объявите нужные переменные в файле variables.tf, обязательно указывайте 
тип переменной. Заполните их default прежними значениями из main.tf.

Проверьте terraform plan. Изменений быть не должно. */

# variable "vm_db_image" {
#   type        = string
#   default     = "ubuntu-2004-lts"
#   description = "VPC image"
# }

# variable "vm_db_name" {
#   type        = string
#   default     = "netology-develop-platform-db"
#   description = "VPC name"
# }

variable "vm_db_platform" {
  type        = string
  default     = "standard-v3"
  description = "VPC platform id"
}

# variable "vm_db_resources" {
#   type        = object({
#     cores         = number
#     memory        = number
#     core_fraction = number
#   })
#   default     = {
#     cores         = 2
#     memory        = 2
#     core_fraction = 20
#   }
#   description = "VPC resources"
# }