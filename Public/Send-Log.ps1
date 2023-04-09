function Send-Log {
    param (

    )
    if ($Global:Output -contains "File") {
        if ($Global:FilePath) {
            $logDirectory = $Global:Filepath
        }
        else {
            $logDirectory = "C:\temp\MiscLogs\PowerShellLog_$(Get-Date -Format 'MM-dd-yyyy').txt"
        }
        $Global:LogEntries | Out-File -FilePath $logDirectory -Force -Confirm:$false    
    }

}