function Initialize-Log {
    [cmdletbinding()]
    param (
        [Parameter(Mandatory=$True)][ValidateSet("File","Screen")]
        $OutputChannels,

        [Parameter()]
        [String]
        $FilePath
    )

    $Global:FilePath = $FilePath
    $Global:LogEntries = @()
    $Global:Output = $OutputChannels
}