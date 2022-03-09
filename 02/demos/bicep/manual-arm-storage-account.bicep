resource storageacct 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'lenvolkstorage2021'
  kind: 'StorageV2'
  location: 'USGovVirginia'
  sku: {
    name: 'Standard_LRS'
  }
}
