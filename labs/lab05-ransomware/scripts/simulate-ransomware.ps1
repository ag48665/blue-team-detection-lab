$folder = "C:\RansomwareLab"

Get-ChildItem $folder -Filter *.txt | ForEach-Object {
    Rename-Item $_.FullName -NewName ($_.BaseName + ".locked")
}

Write-Host "Simulation completed successfully."