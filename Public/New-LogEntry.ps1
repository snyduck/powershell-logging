Function New-LogEntry {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $False)][ValidateSet("INFO", "SUCCESS", "FAIL", "WARN")]
        [String]
        $Severity = "INFO",
        
        [Parameter(Mandatory = $True)]
        [String]
        $Message
    )

    $Timestamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
    $Line = "$Timestamp [$Severity] - $Message"
    Write-Host $Line
    $Global:LogEntries += $Line
}