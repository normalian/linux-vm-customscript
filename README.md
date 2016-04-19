# linux-vm-customscript
A sample for creating Linux VM and setup the VM with a custom script using ARM template.

## How to setup 
- Prepare a site for uploading setup_httpd.sh and index.html ( ex. http://myscriptuploadedsite.azurewebsites.net/ )
- Edit uri of setup_httpd.sh and index.html.
- Upload setup_httpd.sh and index.html to your BLOB or WebApps ( ex. http://myscriptuploadedsite.azurewebsites.net/setup_httpd.sh, http://myscriptuploadedsite.azurewebsites.net/index.html ).

## How to run
you can deploy linux vm customized by custom script.
```
$rgName = 'example-resource-group'
New-AzureRmResourceGroup -Name $rgName -Location "West US"

# validate your template files
Test-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile linux-vm-customscript.json -TemplateParameterFile linux-vm-customscript.parameters.json

New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile linux-vm-customscript.json -TemplateParameterFile linux-vm-customscript.parameters.json
```
