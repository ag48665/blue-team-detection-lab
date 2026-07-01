# Lab 02 - Suspicious PowerShell Execution

## Objective

Detect suspicious PowerShell execution using process creation events and command-line analysis.

---

## Scenario

A Security Operations Center (SOC) detects PowerShell launched with suspicious parameters.

The analyst investigates the activity, identifies attacker techniques, maps the behavior to MITRE ATT&CK, and develops detection logic.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Windows 11 |
| Tool | PowerShell |
| Detection | Sigma |
| Framework | MITRE ATT&CK |

---

## Attack Simulation

Executed command:

```powershell
powershell.exe -ExecutionPolicy Bypass -Command "Get-Process"
```

---

## Investigation

The process was executed with the **ExecutionPolicy Bypass** parameter.

Although this command is harmless in this lab, attackers frequently abuse this parameter to execute malicious PowerShell scripts while bypassing execution restrictions.

---

## Detection

Detection focuses on monitoring:

- PowerShell execution
- `-ExecutionPolicy`
- `-EncodedCommand`
- `-NoProfile`
- `-WindowStyle Hidden`

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| PowerShell | T1059.001 |

---

## Detection Rules

- Sigma
- KQL (coming soon)

---

## Evidence

| Screenshot | Description |
|------------|-------------|
| 01a-powershell-command.png | Executing PowerShell Get-Process |
| 01b-powershell-command.png | Executing PowerShell Get-Service |
| 02-sysmon-eventid1.png | Sysmon Operational Log |
| 03-sysmon-process-creation.png | Event ID 1 Process Creation Details |

---

## Lessons Learned

- PowerShell is a common attack vector.
- ExecutionPolicy Bypass should be monitored.
- Process Creation events provide valuable forensic evidence.