# Indicators of Compromise (IOCs)

## Process

- powershell.exe

## Command Line

```powershell
powershell.exe -ExecutionPolicy Bypass -Command "Get-Process"
```

## MITRE ATT&CK

- T1059.001 - PowerShell

## Detection Indicators

Monitor the following PowerShell parameters:

- `-ExecutionPolicy`
- `-EncodedCommand`
- `-NoProfile`
- `-WindowStyle Hidden`
- `-Command`

## Related Windows Events

- Sysmon Event ID 1 (Process Creation)
- Windows Security Event ID 4688

## Severity

**Medium**

This behavior is commonly associated with administrative tasks but is also frequently abused by attackers to execute malicious PowerShell commands.