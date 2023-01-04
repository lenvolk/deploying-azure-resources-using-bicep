az cloud set --name AzureUSGovernment
az login --only-show-errors -o table --query Dummy
$subscription = "5fac2518-e2da-490f-864f-08eecf055c36"
az account set -s $Subscription
Disconnect-AzAccount
# deploying-azure-resources-using-bicep

Bicep Training

az deployment group create --resource-group $RG --template-file .\bicep-fragments\storage-parameters.bicep --parameters prefix=storenew --name newnamestorage --mode complete --what-if
OR
New-AzResourceGroupDeployment -ResourceGroupName $RG -TemplateFile .\bicep-fragments\storage-parameters.bicep -Whatif
# Show result

az resource list --resource-group $RG -o table
az deployment group list --resource-group $RG -o table

