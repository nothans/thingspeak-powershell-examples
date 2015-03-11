# Get Disk Size and Free Space
$disk = Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'" | Select-Object Size,FreeSpace

# Format Free Space into Gigabytes
$disk.FreeSpace = $disk.FreeSpace / 1Gb
$disk.FreeSpace = [math]::Round($disk.FreeSpace, 2)
$disk.FreeSpace

# ThingSpeak Write API Key (Replace with your key)
$key = "ABCDEFGH12345678"

# ThingSpeak URL
$url = "https://api.thingspeak.com/update?key=" + $key + "&field1=" + $disk.FreeSpace

# Send Disk Space to ThingSpeak
$HTTP_Client = new-object net.webclient
$HTTP_Response = $HTTP_Client.DownloadString($url)

# Check Rate Limit and Display Results
If ($HTTP_Response -ne '0') {
  Write-Host "ThingSpeak Entry ID:" $HTTP_Response
  Write-Host "Disk Free Space:" $disk.FreeSpace "GB"
}
else {
  Write-Host "Channel Update Failed - Check Rate Limit"
}
