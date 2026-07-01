# Attack Simulation

## Objective

Simulate suspicious PowerShell execution using the ExecutionPolicy Bypass parameter.

## Executed Command

```powershell
powershell.exe -ExecutionPolicy Bypass -Command "Get-Process"

Why Attackers Use It

The ExecutionPolicy Bypass parameter allows PowerShell scripts to run without being restricted by the local execution policy.

Although this laboratory uses a harmless command, attackers frequently combine this parameter with malicious payloads or encoded commands.


---

# detection.md

```markdown
# Detection

## Detection Strategy

Monitor process creation events for:

- powershell.exe
- -ExecutionPolicy
- -EncodedCommand
- -NoProfile
- -WindowStyle Hidden

## Data Sources

- Sysmon Event ID 1
- Windows Security Event ID 4688
- Microsoft Defender
- Microsoft Sentinel
- Splunk