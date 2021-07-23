write-host 'AIB Customization: Downloading Artifacts'
$LocalPath = 'C:\\buildArtifacts'
$buildArtifacts="https://euw1wvdgermany.file.core.windows.net/dmlapps/AIB_DML_BuildArtifacts.zip?sv=2020-04-08&ss=btqf&srt=sco&st=2021-07-12T13%3A31%3A27Z&se=2021-07-13T13%3A31%3A27Z&sp=rl&sig=U1zz0zc5zmm9QzJTMkD1nHurmASIiMtup9m%2FWYb8%2B8k%3D"
$installerFile="AIB_DML_BuildArtifacts.zip"

Invoke-WebRequest $buildArtifacts -OutFile $LocalPath\$installerFile
Expand-Archive $LocalPath\$installerFile -DestinationPath $LocalPath
write-host 'AIB Customization: Download Artifacts finished'