write-host 'AIB Customization: Downloading Artifacts'
$LocalPath = 'C:\\buildArtifacts'
$buildArtifacts="https://euw1wvdgermany.file.core.windows.net/dmlapps/AIB_DML_BuildArtifacts.zip?sv=2020-04-08&ss=btqf&srt=sco&st=2021-07-26T16%3A22%3A08Z&se=2021-07-27T16%3A22%3A08Z&sp=rl&sig=A8O0ZdU43MsaWxLa08qBavD8DKSP2qwPmY1gJikQlTg%3D"
$installerFile="AIB_DML_BuildArtifacts.zip"

Invoke-WebRequest $buildArtifacts -OutFile $LocalPath\$installerFile
Expand-Archive $LocalPath\$installerFile -DestinationPath $LocalPath
write-host 'AIB Customization: Download Artifacts finished'