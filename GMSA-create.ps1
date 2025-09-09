# 1. Получаем объект компьютера
$computer = Get-ADComputer -Identity "MACROSCOP-KCH-2"

# 2. Создаём GMSA
New-ADServiceAccount `
  -Name "macroscop-2" `
  -DNSHostName "macroscop-kch-2.holding.melonfashion.ru" `
  -PrincipalsAllowedToRetrieveManagedPassword $computer `
  -Path "OU=cctv,OU=gmsa,OU=users,OU=mfg,DC=holding,DC=melonfashion,DC=ru" `
  -KerberosEncryptionType AES256,AES128 `
  -Verbose