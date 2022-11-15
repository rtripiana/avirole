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
  role_privileges = ["Content\\Library.Add\\library\\item", "Content\\Library.Delete\\library\\item", "Content\\Library.Update\\files", "Content\\Library.Update\\library\\item", "Datastore.Allocate\\space", "Datastore.Remove\\file", "Folder.Create\\folder", "Network.Assign\\network", "Network.Remove", "Resource.Assign\\virtual\\machine\\to\\resource\\pool", "Tasks.Create\\task", "Tasks.Update\\task", "vApp.Add\\virtual\\machine", "vApp.Assign\\resource\\pool", "vApp.Assign\\vApp", "vApp.Create", "vApp.Delete", "vApp.Export", "vApp.Import", "vApp.Power\\off", "vApp.Power\\on", "vApp.vApp\\application\\configuration", "vApp.vApp\\instance\\configuration", "Virtual\\machine.Change\\Configuration.Add\\existing\\disk", "Virtual\\machine.Change\\Configuration.Add\\new\\disk", "Virtual\\machine.Change\\Configuration.Add\\or\\remove\\device", "Virtual\\machine.Change\\Configuration.Advanced\\configuration", "Virtual\\machine.Change\\Configuration.Change\\CPU\\count", "Virtual\\machine.Change\\Configuration.Change\\Memory", "Virtual\\machine.Change\\Configuration.Change\\Settings", "Virtual\\machine.Change\\Configuration.Change\\resource", "Virtual\\machine.Change\\Configuration.Display\\connection\\settings", "Virtual\\machine.Change\\Configuration.Extend\\virtual\\disk", "Virtual\\machine.Change\\Configuration.Modify\\device\\settings", "Virtual\\machine.Change\\Configuration.Remove\\disk", "Virtual\\machine.Edit\\Inventory.Create\\new", "Virtual\\machine.Edit\\Inventory.Remove\\inventory", "Virtual\\machine.Edit\\Inventory.Register", "Virtual\\machine.Edit\\Inventory.Unregister", "Virtual\\machine.Interaction.Connect\\devices", "Virtual\\machine.Interaction.Install\\VMware\\Tools", "Virtual\\machine.Interaction.Power\\off", "Virtual\\machine.Interaction.Power\\on", "Virtual\\machine.Interaction.Reset", "Virtual\\machine.Provisioning.Allow\\disk\\access", "Virtual\\machine.Provisioning.Allow\\file\\access", "Virtual\\machine.Provisioning.Allow\\read-only\\disk\\access", "Virtual\\machine.Provisioning.Deploy\\template", "Virtual\\machine.Provisioning.Mark\\as\\virtual\\machine"]
}
