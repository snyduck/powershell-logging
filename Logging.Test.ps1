describe 'Logging' {
    It "The module imports successfully" {
        { Import-Module -Name "$PSScriptRoot\Logging.psm1" -ErrorAction Stop } | should -Not -Throw
    }
    it ' The module has an associated manifest' {
        Test-Path "$PSScriptRoot\Logging.psd1" | should -Be $true
    }
}