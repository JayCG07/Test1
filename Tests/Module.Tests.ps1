#----Get script path
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
#----Get root paht
$sut = Split-Path $here


#----Test for Folder Structure

Describe 'Check for Pester Module' {
    It "Pester Module should be loaded" {
        (get-module -name pester).name | Should -Be 'Pester'
    }#End It
}

Describe 'Check for VMware.VimAutomation.Core Module' {
    It "VMware.VimAutomation.Core Module should be loaded" {
        (get-module -name VMware.VimAutomation.Core).name | Should -Be 'VMware.VimAutomation.Core'
    }#End It
}

Describe 'Check for VMware.VimAutomation.Vds Module' {
    It "VMware.VimAutomation.Vds should be loaded" {
        (get-module -name VMware.VimAutomation.Vds).name | Should -Be 'VMware.VimAutomation.Vds'
    }#End It
}

Describe 'Check for VME-VMwareTools Module' {
    It "VME-VMwareTools should be loaded" {
        (get-module -name VME-VMwareTools).name | Should -Be 'VME-VMwareTools'
    }#End It
}

Describe 'Check for platyPS Module' {
    It "platyPS should be loaded" {
        (get-module -name platyPS).name | Should -Be 'platyPS'
    }#End It
}

Describe 'Check for psake Module' {
    It "psake should be loaded" {
        (get-module -name psake).name | Should -Be 'psake'
    }#End It
}

Describe 'Check for PSDeploy Module' {
    It "PSDeploy should be loaded" {
        (get-module -name PSDeploy).name | Should -Be 'PSDeploy'
    }#End It
}
