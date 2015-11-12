$destination="img"
New-Item -ItemType directory $destination

$links=Get-Content download.txt
foreach ($link in $links)
{
	Write-Host "Downloading "+$link
#	Write-Host $link.Substring($link.LastIndexOf("/") + 1)
	Invoke-WebRequest $link -OutFile ("{0}/{1}" -f $destination,$link.Substring($link.LastIndexOf("/") + 1))
}