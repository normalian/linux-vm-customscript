<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnormalian%2Flinux-vm-customscript%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
# Linux VM customazation tasks with CustomScript extension
A sample for creating Linux VM and setup the VM with a custom script using ARM template. you can deploy a linux vm customized with custom script, and the script installs Aapche and deploy index.html into the vm.

## How to deploy?
You can deploy the vm like below or press "Deploy button".
```
$rgName = 'example-resource-group'
New-AzureRmResourceGroup -Name $rgName -Location "West US"

# validate your template files
Test-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile azuredeploy.json -TemplateParameterFile azuredeploy.parameters.json

# deploy resources
New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile azuredeploy.json -TemplateParameterFile azuredeploy.parameters.json
```
