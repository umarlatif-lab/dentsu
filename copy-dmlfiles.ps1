$string = Get-WmiObject -Class Win32_Product -Filter 'Name like "%DAP%"' | Select InstallLocation | Select-String "DAP"
$installloc = $string.Line.Split("=")[1]
$destinationpath = $installloc.Split("}")[0]
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\AIB_DML_BuildArtifacts\tnsnames.ora" -Destination "C:\app\product\11.2.0\client_1\network\admin"
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\tnsnames.ora" -Destination "C:\app\product\11.2.0\odac\Network\Admin"
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\connection.xml" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\GoXmlRpc.dll" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\ImportConsole.bat" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\ImportConsole.cfg" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\ImportConsole.exe.config" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\JobAutomationBrokerConfiguration.xml" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\kop.cfg" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\PrognosisAPI.dll" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\Refresh_MV_FollowUpGrouped.bat" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\Refresh_MV_FollowUpGrouped.sql" -Destination $destinationpath
Copy-Item -Path "C:\buildArtifacts\AIB_DML_BuildArtifacts\DML\CFG PROD AZ\SkipBigCitiesLoader.txt" -Destination $destinationpath