while($true){
$url = "http://<IP_OF_ESP32>/getActual.json"
$output = "\\<HASSIO_IP>\share\DSMR-Actual.json"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $output)
#OR
(New-Object System.Net.WebClient).DownloadFile($url, $output)
Write-Host "Loop is klaar"
#604800 ; 7dagen
#86400 ; 1dag 
#3600 ; 1uur
    Start-Sleep -s 60
}