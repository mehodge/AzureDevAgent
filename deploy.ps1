$TenantId = '01c91881-c8fb-47da-95c7-2325967b29a3'
$SubID = 'b9b42d2c-e112-483f-9ddb-4fc8452475a6'
$RG = 'AzureDevAgent-RG'
$Name = 'AzureDevAgent'
$TemplateFile = "C:\Users\mneal\OneDrive\Git\AzureDevAgent\azuredeploy.json"
$TemplateParameterFile = "C:\Users\mneal\OneDrive\Git\AzureDevAgent\azuredeploy.parameters.json"

Connect-AzAccount -TenantId $TenantId -SubscriptionID $SubID

New-AZResourcegroup -Name 'AzureDevAgent-RG' -Location 'North Europe'

New-AzResourceGroupDeployment `
    -Name $Name `
    -ResourceGroupName $RG `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $TemplateParameterFile