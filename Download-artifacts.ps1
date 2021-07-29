write-host 'AIB Customization: Downloading Artifacts'
$LocalPath = 'C:\\buildArtifacts'
$buildArtifacts="https://euw2wvdgermany.file.core.windows.net/dmlapps/AIB_DML_BuildArtifacts.zip?sv=2020-04-08&ss=btqf&srt=sco&st=2021-07-29T12%3A16%3A12Z&se=2021-08-06T12%3A16%3A00Z&sp=rl&sig=rBwRRjgwsuZftxQLgBQF78OWp8nVfC9ZBd50%2FimO%2F0M%3D"
$installerFile="AIB_DML_BuildArtifacts.zip"

Invoke-WebRequest $buildArtifacts -OutFile $LocalPath\$installerFile
Expand-Archive $LocalPath\$installerFile -DestinationPath $LocalPath
write-host 'AIB Customization: Download Artifacts finished'