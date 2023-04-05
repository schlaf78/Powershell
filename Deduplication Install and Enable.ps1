Install-WindowsFeature -Name FS-Data-Deduplication
enable-dedupvolume -volume "F:"
get-dedupstatus
