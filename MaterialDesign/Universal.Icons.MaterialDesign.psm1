$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDMaterialDesignIcon {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Icon
    )

    End {
        @{
            assetId  = $AssetId 
            isPlugin = $true 
            type     = "ud-mdicon"
            id       = $Id

            icon     = $icon
        }
    }
}