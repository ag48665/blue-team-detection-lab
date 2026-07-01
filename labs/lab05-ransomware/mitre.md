# MITRE ATT&CK Mapping

| Tactic | Technique | ID |
|---------|-----------|----|
| Execution | PowerShell | T1059.001 |
| Defense Evasion | System Binary Proxy Execution | T1218 |
| Impact | Data Encrypted for Impact | T1486 |

---

## Detection

Monitor Windows Event Logs and Sysmon telemetry for suspicious execution chains.