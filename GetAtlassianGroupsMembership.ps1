#Clean Previous Output
Clear-Host

#Select What Need To Be Shown
Write-Host "Select Service To Get Group  Membership"
Read-Host "
(1) Active Directory Single Group
(2) Atlassian Confluence Typical Pack Of Groups
(3) Atlassian Jira typical Pack of Groups
"

Switch (3) 
{
1 { ActiveDirectorySingleGroup }
2 { AtlassianConfluence }
3 { AtlassianJira }
}


#Atlassian Confluence Group Block
Function AtlassianConfluence {
$ConfluenceGroupInventory = Read-Host -Prompt "Enter Confluence Group name:"
#Print Administrator Group Membership
"`n"
"$ConfluenceGroupInventory-adm members"
Get-ADGroupMember $JiraGroupInventory-adm | select name, Samaccountname
#Print Analytic Group Membership
"`n"
"$ConfluenceGroupInventory-rw members"
Get-ADGroupMember $JiraGroupInventory-rw | select name, Samaccountname
#Print Developer Group Membership
"`n"
"$ConfluenceGroupInventory-ro members"
Get-ADGroupMember $ConfluenceGroupInventory-ro | select name, Samaccountname
#Print User Group Membership
}



#Atlassian Jira Group Block
Function AtlassianJira {
$JiraGroupInventory = Read-Host -Prompt "Enter Jira Group name:"
#Print Administrator Group Membership
"`n"
"$JiraGroupInventory-adm members"
Get-ADGroupMember $JiraGroupInventory-adm | select name, Samaccountname
#Print Analytic Group Membership
"`n"
"$JiraGroupInventory-anl members"
Get-ADGroupMember $JiraGroupInventory-anl | select name, Samaccountname
#Print Developer Group Membership
"`n"
"$JiraGroupInventory-dev members"
Get-ADGroupMember $JiraGroupInventory-dev | select name, Samaccountname
#Print User Group Membership
"`n"
"$JiraGroupInventory-usr members"
Get-ADGroupMember $JiraGroupInventory-usr | select name, Samaccountname
}