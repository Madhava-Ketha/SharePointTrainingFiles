Write-Host

if($args)
{
    $SiteName = $args[0]
    $SiteUrl = "http://basemachine:55555/sites/"+$SiteName
    Write-Host "Begin creating Contoso site at" $SiteUrl
    Write-Host
    $NewSite = New-SPSite -URL $SiteUrl -OwnerAlias Administrator -Template STS#1 -Name $SiteName
    $RootWeb =$NewSite.RootWeb
    $RootWeb.Title = "Contoso Site: "+$SiteName 
    $RootWeb.Update()
    Write-Host "New Contoso site successfully created"
    Write-Host "--------------------------------------"
    Write-Host "Title:" $RootWeb.Title -ForegroundColor Yellow
    Write-Host "URL:" $RootWeb.Url -ForegroundColor Yellow
    Write-Host "ID:" $RootWeb.Id.ToString() -ForegroundColor Yellow
}
Else
{
Write-Host "Error: You must supply Name as parameter when calling CreateContosoSite.ps1"
}
Write-Host