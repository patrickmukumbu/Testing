https://s3.amazonaws.com/aws-cli/AWSCLI64.msi


JSUAh!Khss=QLpQvFCg5uCK28pQ7)BBz

*QwqH)os;WnMAKq;XW3dqOhAf-?%Np?E


msiexec /i "path\MSI\AWSCLI64.msi" AGREETOLICENSE="yes"

#installing awscli in windows instances
#you can use Invoke-WebRequest -OutFile || wget -O || curl -O
<powershell>
Invoke-WebRequest -OutFile awscli.msi https://s3.amazonaws.com/aws-cli/AWSCLI64.msi
msiexec /i awscli.msi /passive /no  restart
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
aws s3 cp C:\Users|Administrator\Downloads\awscli.msi s3://enquizit1
</powershell>




#unzipping
powershell.exe -NoP -NonI -Command "Expand-Archive '.\httpd.zip' '.\unziped\'"
powershell.exe -NoP -NonI -Command "Expand-Archive '.\httpd.zip'"



#a powershell script for windows
wget -O C:\Users\Administrator\Downloads\awscli.msi https://s3.amazonaws.com/aws-cli/AWSCLI64.msi >> C:\Users\Administrator\Documents\output.log
msiexec /i C:\Users\Administrator\Downloads\awscli.msi /passive /norestart >> C:\Users\Administrator\Documents\output.log
dir >> C:\Users\Administrator\Documents\output.log
$instanceid=Invoke-RestMethod -uri http://169.254.169.254/latest/meta-data/instance-id
ipconfig /all >> C:\Users\Administrator\Documents\output.log
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
aws s3 cp C:\Users\Administrator\Downloads\awscli.msi s3://enquizit1/$instanceid/awscli.msi >> C:\Users\Administrator\Documents\output.log
aws s3 cp C:\Users\Administrator\Documents\output.log s3://enquizit1/$instanceid/output.log >> C:\Users\Administrator\Documents\output.log
del C:\Users\Administrator\Downloads\awscli.msi
del C:\Users\Administrator\Documents\output.log

Get-Content .runme.ps1 | PowerShell.exe -noprofile - 

ExtractToDirectory .powershell.ps1 | PowerShell.exe -noprofile - 



Yp=?AG8X696ryEfGwmf?kb8vuJ4!t=Ip



<powershell>
<script>
PowerShell -ExecutionPolicy RemoteSigned -Command {Set-ExecutionPolicy RemoteSigned}
</script>
wget -O C:\Users\Administrator\Downloads\awscli.msi https://s3.amazonaws.com/aws-cli/AWSCLI64.msi >> C:\Users\Administrator\Documents\output.log
msiexec /i C:\Users\Administrator\Downloads\awscli.msi /passive /norestart >> C:\Users\Administrator\Documents\output.log
dir >> C:\Users\Administrator\Documents\output.log
$instanceid=Invoke-RestMethod -uri http://169.254.169.254/latest/meta-data/instance-id
ipconfig /all >> C:\Users\Administrator\Documents\output.log
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
aws s3 cp C:\Users\Administrator\Downloads\awscli.msi s3://enquizit1/$instanceid/awscli.msi >> C:\Users\Administrator\Documents\output.log
aws s3 cp C:\Users\Administrator\Documents\output.log s3://enquizit1/$instanceid/output.log >> C:\Users\Administrator\Documents\output.log
del C:\Users\Administrator\Downloads\awscli.msi
del C:\Users\Administrator\Documents\output.log
</powershell>




Expand d:\i386\hal.dl_ c:\windows\system32\hall.dll
Expand .\powershell.zip_ c:\users\administrator\downloads





$env:SystemRoot\Temp ------> C:\Windows
$env:Temp -----------------> C:\Users\Administrator\AppData\Local\Temp\2




powershell.exe -NoP -NonI -Command "Expand-Archive '.\powershell.zip'" /log:output.log




################################################################################################################################################
##Windows 2012/2008 execution order
Invoke-WebRequest -OutFile $env:SystemRoot\Temp\awscli.msi https://s3.amazonaws.com/aws-cli/AWSCLI64.msi
msiexec /i $env:SystemRoot\Temp\awscli.msi /passive /norestart | Out-Null
$instanceid=Invoke-RestMethod -uri http://169.254.169.254/latest/meta-data/instance-id
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
aws s3 cp $env:SystemRoot\Temp\awscli.msi s3://enquizit1/$instanceid/awscli.msi >> $env:SystemRoot\Temp\output.log
aws s3 cp $env:SystemRoot\Temp\output.log s3://enquizit1/$instanceid/output.log
#*******************************************************************************************************************************************####

##Windows 2012/2008 Extracting from zipfile 
$ZipFile="$env:SystemRoot\Temp\powershell.zip"
$Destination="$env:SystemRoot\Temp\powershell"
[System.Reflection.Assembly]::LoadWithPartialName("System.IO.Compression.FileSystem") | Out-Null
[System.IO.Compression.ZipFile]::ExtractToDirectory($ZipFile, $Destination)
Get-Content .\powershell\*.ps1 | powershell.exe -noprofile -


###############################################################################################################################################




