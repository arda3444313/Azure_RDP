@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator GettoVDS!12 /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
echo To change another VM region, Create New organization (Your current VM location:  %LO% )
echo Region Available: West Europe, Central US, East Asia, Brazil South, Canada Central, Autralia East, UK South, South India
echo Hepsi tamam! VM'nizi RDP kullanarak bağlayın. RDP'nin süresi dolduğunda ve VM kapatıldığında, yeni bir RDP almak için işleri Yeniden Çalıştırma başarısız oldu.
net user installer /delete
curl -o "C:\Users\Public\Desktop\Readme.txt" https://raw.githubusercontent.com/hayday1/Azure_RDP/main/Readme.txt > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\SetupBrowser.zip" https://raw.githubusercontent.com/hayday1/Azure_RDP/main/SetupBrowser.zip > out.txt 2>&1
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo Hepsi tamam! VDS'nizi Uzak Masaüstü Bağlantısı kullanarak bağlayın
echo IP: Altta ↓
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "NGROK tüneli alınamıyor, lütfen yeni NGROK TOKEN'i YML'ye yapıştırın. Tüneli buradan kontrol edin: https://dashboard.ngrok.com/status/tunnels" && exit
echo Kullanıcı Adı: administrator
echo Şifre: GettoVDS!12
echo Daha Fazlası İçin: youtube.com/gettovds
echo VDS Videoları: https://www.youtube.com/watch?v=94_wzMu24ZY&list=PLN5czqqhG0sOHMNxdtNu7USdTkLYtyJIz
ping -n 999999 10.10.0.10 >nul
