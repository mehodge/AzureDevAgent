# A Visual Studio based Visual Studio Team Services (VSTS) Build Agent VM
(https://raw.githubusercontent.com/Mehodge/AzureDevAgent/master/images/deploytoazure.svg?sanitize=true)
[![Deploy to Azure]](https://portal.azure.com/#create/Microsoft.Template/urihttps://raw.githubusercontent.com/mehodge/AzureDevAgent/master/AzureDeploy.json)
[![Visualize](https://raw.githubusercontent.com/Mehodge/AzureDevAgent/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https://raw.githubusercontent.com/mehodge/AzureDevAgent/master/AzureDeploy.json)

This template is based on the <a href="https://github.com/Azure/azure-quickstart-templates/tree/master/visual-studio-dev-vm">Visual Studio Dev VM template created by [dtzar](https://github.com/dtzar).  It creates the VM in a new vnet, storage account, nic, and public ip with the new compute stack then installs the Visual Studio Team Services build agent.
By default, it will deploy Visual Studio 2015 Update 3 with Azure SDK 2.9 on Windows Server 2012 with a DS1 size on top of a new premium storage account.

## Authentication
In order to authenticate your agent as a member of Agent Pool Administrators group, you must use one of the following methods:
* set up and use a <a href="https://www.visualstudio.com/en-us/get-started/setup/use-personal-access-tokens-to-authenticate">Personal Access Token, set PersonalAccessToken to the token value.

You can revoke or change the credentials in Visual Studio Team Services after the VM has been created.