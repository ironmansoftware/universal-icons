task MaterialDesign {
    $OutputPath = "$PSScriptRoot\MaterialDesign\output\Universal.Icons.MaterialDesign"
    Remove-Item -Path $OutputPath -Force -ErrorAction SilentlyContinue -Recurse
    Remove-Item -Path "$PSScriptRoot\MaterialDesign\public" -Force -ErrorAction SilentlyContinue -Recurse	
    Set-Location "$PSScriptRoot\MaterialDesign"

    & {
        $ErrorActionPreference = 'SilentlyContinue'
        npm install
        npm run build
    }

    New-Item -Path $OutputPath -ItemType Directory

    Copy-Item $PSScriptRoot\MaterialDesign\public\*.* $OutputPath
    Copy-Item $PSScriptRoot\MaterialDesign\Universal.*.psd1 $OutputPath
    Copy-Item $PSScriptRoot\MaterialDesign\Universal.*.psm1 $OutputPath
}

task . MaterialDesign