

#----Get script path
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
#----Get root paht
$sut = Split-Path $here


#----Test for Folder Structure

Describe 'Module folders structure' {
    It "Archive folder should exist" {
        "$sut\Archive" | Should Exist
    }#End It

    It "en-US folder should exist" {
        "$sut\en-US" | Should Exist
    }#End It

    It "Examples folder should exist" {
        "$sut\Examples" | Should Exist
    }#End It

    It "Functions folder should exist" {
        "$sut\Functions" | Should Exist
    }#End It

    It "Tests folder should exist" {
        "$sut\Tests" | Should Exist
    }#End It

    It "Private folder should exist" {
        "$sut\Private" | Should Exist
    }#End It
}#End Describe


#----Test for standard files for Module

Describe 'Module files exist' {
    It ".gitignore file should exist" {
        "$sut\.gitignore" | Should Exist
    }#End It

    It "LICENSE file should exist" {
        "$sut\LICENSE" | Should Exist
    }#End It

    It "README.MD file should exist" {
        "$sut\README.MD" | Should Exist
    }#End It

    It "psd1 file should exist" {
        "$sut\*.psd1" | Should Exist
    }#End It

    It "psm1 file should exist" {
        "$sut\*.psm1" | Should Exist
    }#End It
    
}#End Describe


#----Check all functions for basic components

Describe 'Test each function for standard content - .SYNOPSIS' {
    #----Get each function from Functions folder and test
    $FunctionFiles = Get-ChildItem "$sut\Functions" 
    foreach ($FunctionName in $FunctionFiles) {
        It "check for .SYNOPSIS" {
                "$sut\Functions\$FunctionName"| Should -Contain '.SYNOPSIS'
        }#End It
    }#End foreach
}#End Describe

Describe 'Test each function for standard content - .DESCRIPTION' {
    #----Get each function from Functions folder and test
    $FunctionFiles = Get-ChildItem "$sut\Functions" 
    foreach ($FunctionName in $FunctionFiles) {
        It "check for .DESCRIPTION" {
                "$sut\Functions\$FunctionName"| Should -Contain '.DESCRIPTION'
        }#End It
    }#End foreach
}#End Describe

Describe 'Test each function for standard content - .EXAMPLE' {
    #----Get each function from Functions folder and test
    $FunctionFiles = Get-ChildItem "$sut\Functions" 
    foreach ($FunctionName in $FunctionFiles) {
        It "check for .EXAMPLE" {
                "$sut\Functions\$FunctionName"| Should -Contain '.EXAMPLE'
        }#End It
    }#End foreach
}#End Describe

Describe 'Test each function for standard content - .NOTES' {
    #----Get each function from Functions folder and test
    $FunctionFiles = Get-ChildItem "$sut\Functions" 
    foreach ($FunctionName in $FunctionFiles) {
        It "check for .NOTES" {
                "$sut\Functions\$FunctionName"| Should -Contain '.NOTES'
        }#End It
    }#End foreach
}#End Describe

Describe 'Test each function for standard content - $ScriptName = ' {
    #----Get each function from Functions folder and test
    $FunctionFiles = Get-ChildItem "$sut\Functions" 
    foreach ($FunctionName in $FunctionFiles) {
        It 'check for $ScriptName =' {
                "$sut\Functions\$FunctionName"| Should -Contain "$ScriptName = "
        }#End It
    }#End foreach
}#End Describe

Describe 'Test each function for standard content - $ScriptUniqueID = ' {
    #----Get each function from Functions folder and test
    $FunctionFiles = Get-ChildItem "$sut\Functions" 
    foreach ($FunctionName in $FunctionFiles) {
        It 'check for $ScriptUniqueID =' {
                "$sut\Functions\$FunctionName"| Should -Contain "$ScriptUniqueID = "
        }#End It
    }#End foreach
}#End Describe

