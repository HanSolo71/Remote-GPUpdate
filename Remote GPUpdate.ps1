#Gets all workstations that need to have software installed, if you don't want to uninstall all of the software from you will need to use a text document and Get-Content
$computers = Get-ADComputer -Filter * -SearchBase "DC=Contoso,DC=COM" | Select DNSHostName -ExpandProperty DNSHostname

#Gets computers to run on from text file
#$computers = Get-Content '\\FileShare\Computers.txt'

foreach ($Computer in $Computers) 
{
$computer
Invoke-GPUpdate -Computer $Computer -RandomDelayInMinutes 0 -Sync
}