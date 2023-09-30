resource "proxmox_vm_qemu" "test_vm" {
  name        = "K8s Master"
  desc        = "tf description"
  target_node = "proxmox"

  clone = "ci-ubuntu-template"

  oncreate = false

  # The destination resource pool for the new VM
  # pool = "pool0"

  # disk {
  #   slot    = 0
  #   type    = "scsi"
  #   storage = "local-lvm"
  #   size    = "10G"
  # }

  # cores   = 3
  # sockets = 1
  # memory  = 1024

  # network {
  #   model  = "virtio"
  #   bridge = "vmbr0"
  # }
  # os_type = "6.x - 2.6 Kernel"
}
