###############################################################################################
####  Script by Rory Monaghan                              Date: August 3rd 2016           ####
####                                                                                       ####
####  Description: Script runs against a text file with a bunch of AD Groups. I hardcoded  ####
####               the path fo the text file containing the AD Groups. That's up to you.   ####
####  Requires: ActiveDirectory module                                                     ####
####                                                                                       ####
####                                                                                       ####
####  How to use: Just run the script against a text file with a bunch of AD Groups        ####
####                                                                                       ####
####                                                                                       ####
###############################################################################################

  
$groups = Get-Content D:\ADPull.txt

$results = foreach ($group in $groups) {
    Get-ADGroupMember $group | select samaccountname
}

$results

$results | Export-csv C:\Users\s-Rory.Monaghan\Desktop\ADPullresult.txt -NoTypeInformation


