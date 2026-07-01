# Detection Strategy

## Data Sources

- Sysmon Event ID 13
- Windows Registry
- Microsoft Defender
- Microsoft Sentinel
- Splunk

---

## Detection Logic

Generate an alert when:

- A new Run registry key is created.
- An existing Run registry key is modified.
- The action is performed by PowerShell, cmd.exe, rundll32.exe or regsvr32.exe.

---

## Detection Content

- Sigma Rule
- KQL Query
- Splunk Search