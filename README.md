# demo-bicep

My bicep playground

## Prep

1. Azure CLI > 2.20

1. Visual Studio Code

1. Install bicep extension for Visual Studio Code

docs: <https://docs.microsoft.com/de-de/azure/azure-resource-manager/bicep/install>

az bicep install
az bicep upgrade
az bicep version

az group create --name rg-temp-01 --location westeurope --parameters storageName=mystorage12345


az bicep build --file main.bicep