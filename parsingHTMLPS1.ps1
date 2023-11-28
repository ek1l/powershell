clear
$site = Read-Host "Digite o site"
$web = Invoke-WebRequest -uri "$site" -Method Options
echo "O servidor roda:"
$web.headers.server
echo "====================="
echo "O servidor aceita os métodos:"
$web.Headers.Allow
echo "====================="
echo "Links encontrados:"
$web2 = Invoke-WebRequest -uri "$site"
$web2.Links.href | Select-String http://
echo "====================="