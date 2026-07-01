# Detection Strategy

## Data Sources

- Sysmon Event ID 1
- Windows Security Event ID 4688
- Microsoft Defender
- Microsoft Sentinel
- Splunk

---

## Detection Logic

Alert when:

- PowerShell executes with suspicious arguments.
- LOLBins execute unexpectedly.
- Large numbers of files are modified within a short period.
- Suspicious child processes are spawned.

---

## Detection Engineering

Detection content includes:

- Sigma Rules
- KQL Queries
- IOC Monitoring