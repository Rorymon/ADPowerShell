$account = "HOMELAB\AppVAdmins"

(New-Object system.security.principal.NtAccount($Account)).translate([system.security.principal.securityidentifier]).value
