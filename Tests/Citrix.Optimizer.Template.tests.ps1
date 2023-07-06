# AppVeyor Testing
$manifest = "$env:APPVEYOR_BUILD_FOLDER\PSGallery\Citrix.Optimizer.Template.psd1"
$module = "$env:APPVEYOR_BUILD_FOLDER\PSGallery\Citrix.Optimizer.Template.psm1"

Describe 'Module Metadata Validation' {      
    it 'Script fileinfo should be ok' {
        {Test-ModuleManifest $manifest -ErrorAction Stop} | Should Not Throw
    }
        
    it 'Import module should be ok' {
        {Import-Module $module -Force -ErrorAction Stop} | Should Not Throw
    }
}
