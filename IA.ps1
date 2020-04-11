

Echo {"
        .---.`                                                      `.----..                        
      :NMMMMMMo                                                   .dMMMMMMMMN:                      
      +MMMMMMMy                                                   dMMMMMMMMMMN.                     
      +MMMMMMMy                                                  oMMMMMMMMMMMMd                     
      +MMMMMMMy                                                 -MMMMMMMMMMMMMMo                    
      +MMMMMMMy                                                `mMMMMMMomMMMMMMM:                   
      +MMMMMMMy                                                yMMMMMMh :MMMMMMMm`                  
      +MMMMMMMy                                               /MMMMMMN.  sMMMMMMMy                  
      +MMMMMMMy                                              .NMMMMMM+   `mMMMMMMM/                 
      +MMMMMMMy                                              dMMMMMMh     -MMMMMMMN.                
      +MMMMMMMy                                             oMMMMMMN.      oMMMMMMMd                
      +MMMMMMMy                                            :MMMMMMM/        dMMMMMMMo               
      +MMMMMMMy                                           `mMMMMMMy         .NMMMMMMM:              
      +MMMMMMMy                                           yMMMMMMN`          +MMMMMMMm`             
      +MMMMMMMy                                          /MMMMMMM/            hMMMMMMMy             
      +MMMMMMMy                                         .NMMMMMMy             .NMMMMMMM/            
      +MMMMMMMy                                         hMMMMMMm`              /MMMMMMMN.           
      +MMMMMMMy                                        oMMMMMMM:                yMMMMMMMd`          
      +MMMMMMMy                                       -NMMMMMMs                 `mMMMMMMMo          
      +MMMMMMMy                                      `mMMMMMMm`                  :MMMMMMMM:         
      +MMMMMMMy                                      yMMMMMMMmhhhhhhhhhhhhhhhhhhhhMMMMMMMMm`        
      +MMMMMMMy                                     /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy        
      +MMMMMMMy                                    .NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM/       
      +MMMMMMMy                                    hMMMMMMMyyyyyyyyyyyyyyyyyyyyyyyyydMMMMMMMN.      
      +MMMMMMMy                                   oMMMMMMMy                         `mMMMMMMMh      
      +MMMMMMMy                                  -MMMMMMMN`                          :MMMMMMMMo     
      +MMMMMMMy                                 `mMMMMMMM/                            sMMMMMMMM-    
      +MMMMMMMy                                 yMMMMMMMy                              dMMMMMMMm`   
      +MMMMMMMy                                /MMMMMMMm`                              -NMMMMMMMy   
      +MMMMMMMy                               .NMMMMMMM:                                +MMMMMMMM/  
      +MMMMMMMy                               hMMMMMMMy                                  hMMMMMMMN` 
      .yddmmdy:                               oddmmdhs`                                  `sddmmmdy` "}

while (1 -eq 1) {
$a = Read-Host -Prompt "§"

#eingabe

#vpn
if($a-eq "add-vpn") {
$vpnname = Read-Host -Prompt "VPN name"
$vpnserveraddress = Read-Host -Prompt "Server addrese"
Add-VpnConnection -Name $vpnname -ServerAddress $vpnserveraddress -TunnelType Automatic -EncryptionLevel Required -AuthenticationMethod MSChapv2 -UseWinlogonCredential -SplitTunneling -RememberCredential -PassThru
}
if($a-eq "remove-vpn") {
$vpnname2 = Read-Host -Prompt "VPN name"
Remove-VpnConnection $vpnname2 -Force
}
#info
if($a-eq "info") {
echo "IA version | 1.0 DE Win"
Get-Date
}
#Init IA
if($a-eq "Init IA -C") {
cd data/
Import-Module .\IA-c.ps1
}
}