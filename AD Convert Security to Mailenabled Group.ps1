Get-ADGroup SpecifyTargetSecurityGroup | Set-ADGroup -GroupScope Universal -GroupCategory Security
Enable-DistributionGroup -Identity SpecifyTargetSecurityGroup -PrimarySmtpAddress "SpecifyTargetSecurityGroup@domain.com"
