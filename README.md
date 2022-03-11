# deploying-azure-resources-using-bicep

Bicep Training

az deployment group create --resource-group $RG --template-file .\bicep-fragments\storage-parameters.bicep --parameters prefix=storenew --name newnamestorage --mode complete --what-if

# Show result

az resource list --resource-group $RG -o table
az deployment group list --resource-group $RG -o table
