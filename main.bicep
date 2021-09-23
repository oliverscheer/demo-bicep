// resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
//   name: 'examplevnet'
//   location: resourceGroup().location
//   properties: {
//     addressSpace: {
//       addressPrefixes: [
//         '10.0.0.0/16'
//       ]
//     }
//     subnets: [
//       {
//         name: 'Subnet-1'
//         properties: {
//           addressPrefix: '10.0.0.0/24'
//         }
//       }
//       {
//         name: 'Subnet-2'
//         properties: {
//           addressPrefix: '10.0.1.0/24'
//         }
//       }
//     ]
//   }
// }


@minLength(3)
@maxLength(24)
@description('Provide a name for the storage account')
param storageName string

resource exampleStorage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageName
  location: 'westeurope'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

