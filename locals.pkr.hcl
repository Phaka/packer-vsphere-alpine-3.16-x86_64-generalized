locals {
  timestamp = formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ", timestamp())
  suffix = formatdate("YYYYMMDD'T'hhmm", timestamp())
  vm_name = "Alpine-3.16-x86_64-${local.suffix}"
  iso_path = join("", [var.iso_path_prefix, var.iso_path])
  boot_commands = <<-EOT
    root<enter><wait>
    setup-alpine<enter><wait5>
    us<enter><wait>
    us<enter><wait>
    alpine<enter><wait>
    eth0<enter><wait>
    dhcp<enter><wait>
    n<enter><wait15s>
    ${ var.ssh_password }<enter><wait>
    ${ var.ssh_password }<enter><wait>
    America/Los_Angeles<enter><wait>
    none<enter><wait>
    none<enter><wait>
    62<enter><wait>
    no<enter><wait>
    openssh<enter><wait>
    yes<enter><wait>
    none<enter><wait15s>
    sda<enter><wait>
    sys<enter><wait10s>
    y<enter><wait30s>
    reboot now<enter><wait30s>
    root<enter><wait>
    ${ var.ssh_password }<enter><wait>
    echo \"http://mirror.fcix.net/alpine/v3.16/community/\" >> /etc/apk/repositories<enter><wait>
    apk update<enter><wait15s>
    apk add sudo<enter><wait5>
    echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers.d/wheel<enter>
    apk add python3<enter><wait10s>
    apk add nano<enter><wait10s>
    apk add open-vm-tools<enter><wait10s>
    apk add open-vm-tools-guestinfo<enter><wait10s>
    apk add open-vm-tools-deploypkg<enter><wait10s>
    rc-update add open-vm-tools boot<enter><wait10s>
    reboot now<enter>
    EOT
}