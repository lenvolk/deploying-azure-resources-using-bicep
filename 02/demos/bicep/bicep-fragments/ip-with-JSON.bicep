var dets = json(loadTextContent('./sample.json'))

resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2019-11-01' = {
  name: dets.Name
  location: resourceGroup().location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    dnsSettings: {
      domainNameLabel: dets.DNSName
    }
  }
}
