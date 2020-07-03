
$isInternet = $false
$i=0
while(1){
if (Test-Connection -Destination www.google.com -Count 1 -ea SilentlyContinue){
    if($isInternet -eq $false -And $i -lt 4){
 	$Song = New-Object System.Media.SoundPlayer
    $Song.SoundLocation = "D:\wakeup.wav"
    $Song.Playsync()
    $i++
    if($i -ge 3){
    $isInternet=$true
    }
    }
 }
 

 else{
    $i=0
    if($isInternet -eq $true){
    $Song2 = New-Object System.Media.SoundPlayer
    $Song2.SoundLocation = "D:\No_internet.wav"
    $Song2.playsync()
    $isInternet=$false
    }
}
Start-Sleep -Seconds 1
}
