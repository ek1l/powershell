param($ip)
clear
if(!$ip){
    echo "DESEC SECURITY - PORTSCAN"
    echo "Modo de uso: .\PortScanPS1 192.168.0.1 80"
}else{
$topports = 21,22,25,80,443,3306
try{foreach($porta in $topports){
if(Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
    echo "Porta $porta Aberta" 
}}else {
    echo "Porta $porta Fechada"
 }}catch{}
}