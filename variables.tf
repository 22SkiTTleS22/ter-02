###cloud vars


variable "cloud_id" {
  type        = string
  default = "b1g76afetir66a1jh5jj"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1gtg95vvjee8mhbd87k"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINFSsA90cPfmjuRU29aEnlkOxfecFyCIZaeJp9AqUlg0 drili@MrMiner"
  description = "ssh-keygen -t ed25519"
}

/* Замените все хардкод-значения для ресурсов yandex_compute_image и 
yandex_compute_instance на отдельные переменные. К названиям переменных ВМ 
добавьте в начало префикс vm_web_ . Пример: vm_web_name.

Объявите нужные переменные в файле variables.tf, обязательно указывайте 
тип переменной. Заполните их default прежними значениями из main.tf.

Проверьте terraform plan. Изменений быть не должно. */

variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VPC image"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "VPC name"
}

variable "vm_web_platform" {
  type        = string
  default     = "standard-v3"
  description = "VPC platform id"
}

variable "vm_web_resources" {
  type        = list(number)
  default     = {cores = 2, memory = 1, core_fraction = 20}
  description = "VPC resources"
}


