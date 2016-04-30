<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnormalian%2Flinux-vm-customscript%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
# linux-vm-customscript
A sample for creating Linux VM and setup the VM with a custom script using ARM template.

## How to run
you can deploy linux vm customized by custom script.
```
$rgName = 'example-resource-group'
New-AzureRmResourceGroup -Name $rgName -Location "West US"

# validate your template files
Test-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile azuredeploy.json -TemplateParameterFile azuredeploy.parameters.json

New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile azuredeploy.json -TemplateParameterFile azuredeploy.parameters.json
```
