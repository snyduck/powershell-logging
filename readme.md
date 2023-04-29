# Overview
A quick and simple text logging module for PowerShell, will be expanded on in the future.

<br>

# Example
The following example initializes a new log that will be output to both the screen and a file.

```powershell
    Import-Module "$env:userprofile\OneDrive\Dev\!powershell\Logging\Logging.psm1"
    Initialize-Log -OutputChannels @("Screen","File") -FilePath "$env:Userprofile\temp\log.txt"
    
    New-LogEntry -Severity "INFO" -Message "Throwing this out there"
    New-LogEntry -Severity "WARN" -Message "We're almost there!"
    New-LogEntry -Severity "INFO" -Message "Finished now"
    
    Send-Log
```

# TODO
-Import into NuGet and properly install module.