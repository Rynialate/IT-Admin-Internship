Function Get-CatFact {
	[CmdletBinding()]
	param()
	(Invoke-RestMethod -Uri https://catfact.ninja/fact ).fact
}

$fact = Get-CatFact
$wshell = New-Object -ComObject Wscript.Shell -ErrorAction Stop
$wshell.Popup($fact, 0, "Cat Fact:", 0 + 64) 