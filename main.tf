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

https://avinetworks.com/docs/22.1/roles-and-permissions-for-vcenter-nsx-t-users/
Content Library
  Add library item
  Delete library item
  Update files
  Update library item
Datastore
  Allocate space
  Remove file
Folder
  Create folder
Network
  Assign network
  Remove
Resource
  Assign virtual machine to resource pool
Tasks
  Create task
  Update task
vApp
  Add virtual machine
  Assign resource pool
  Assign vApp
  Create
  Delete
  Export
  Import
  Power off
  Power on
  vApp application configuration
  vApp instance configuration
Virtual machine
  Change Configuration
    Add existing disk
    Add new disk
    Add or remove device
    Advanced configuration
    Change CPU count
    Change Memory
    Change Settings
    Change resource
    Display connection settings
    Extend virtual disk
    Modify device settings
    Remove disk
  Edit Inventory
    Create new
    Remove inventory
    Register
    Unregister
  Interaction
    Connect devices
    Install VMware Tools
    Power off
    Power on
    Reset
  Provisioning
    Allow disk access
    Allow file access
    Allow read-only disk access
    Deploy template
    Mark as virtual machine
