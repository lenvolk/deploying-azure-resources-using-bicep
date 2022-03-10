targetScope = 'subscription'

param RG_Name string

resource bicepRG 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: RG_Name
  // location: 'eastUS'
  location: 'USGovVirginia'
}

module nsg './nsg.bicep' = {
  scope: bicepRG
  name: 'my-nsg-1'
  params: {
    nsg_name: 'nsg'
    allow_rdp: true
  }
}
