$vmUnattachedDataDisk = Get-AzDisk | Where-Object {$_.DiskState -eq 'Unattached' -or [string]::IsNullOrEmpty($_.ManagedBy)}
$vmUnattachedDataDisk | ConvertTo-Json | Out-File -Path ./result.json