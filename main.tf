provider "vsphere" {
  user                 = var.vcs_credentials[0]
  password             = var.vcs_credentials[1]
  vsphere_server       = var.vcs_credentials[2]
  allow_unverified_ssl = true
}

# ------------------------------------------------------------------------------------------------------
# VARIABLES
# ------------------------------------------------------------------------------------------------------

variable "vcs_credentials" {
  description = "list vCenter credentials: user, pwd, vcs_ip"
  type        = list(string)
  default     = ["","",""]
}

# ------------------------------------------------------------------------------------------------------
# RESOURCES
# ------------------------------------------------------------------------------------------------------


resource vsphere_role "avirole" {
  name = "AviRrole"
  role_privileges = ["Alarm.Acknowledge", "Alarm.Create", "Datacenter.Create", "Datacenter.Move"]
}