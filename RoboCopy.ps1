#Script is suitable to copy all files across  HDD\Servers with NTFS permissions saving.

robocopy "D:\SourceFolder" "\\RemoteServer\d$\DestinationFolder" *.* /TEE /E /NP /V /DCOPY:T /COPY:DATSOU /PURGE /MIR /R:1 /W:1 /ZB /mt:16 /unilog:C:\MigrationReportPath\SourceFolder-20230322-RobocopyResults.log

#Used keys:
#/TEE
#/E
#/NP
#/V
#/DCOPY:T
#/COPY:DATSOU
#/PURGE
#/MIR
#/R:1
#/W:1
#/ZB
#/mt:16
