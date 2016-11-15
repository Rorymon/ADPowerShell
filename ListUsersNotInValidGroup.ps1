
$users = Get-Content "C:\MembershipScript\65users.txt"



$results = foreach ($user in $users) {

$memberOf = Get-QADMemberOf -Identity $user -Name *RM-LOC*


if($memberOf)
{
   
}
else
{ 
Add-Content "C:\MembershipScript\MasterList.txt" $user
}
}
