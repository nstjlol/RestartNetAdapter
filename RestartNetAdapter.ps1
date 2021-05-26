Write-Host "Restarting `'Ethernet`' adapter" -ForegroundColor Red
#Restarts the specified network adapter. Replace "Ethernet" with the desired network adapter name.
Restart-NetAdapter -Name Ethernet
#Prints "." until the network adapter is online.
While ((Get-NetAdapter -Name Ethernet).status -ne "Up") {
    Write-Host -NoNewline "." -ForegroundColor Red
    #Delay between periods printing.
    Start-Sleep -seconds 0.5
}
Write-Host "`n`'Ethernet`' adapter UP!" -ForegroundColor Green
Start-Sleep -seconds 1
Exit