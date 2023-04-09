# Overview
A quick and simple text logging module for PowerShell, will be expanded on in the future.

<br>

# Example
The following example initializes a new log that will be output to both the screen and a file.

```powershell
    Initialize-Log -OutputChannels @("Screen","File") -FilePath "$env:Userprofile\temp\log.txt"
    
    New-LogEntry -Severity "INFO" -Message "Throwing this out there"
    New-LogEntry -Severity "WARN" -Message "We're almost there!"
    New-LogEntry -Severity "INFO" -Message "Finished now"
    
    Send-Log
```