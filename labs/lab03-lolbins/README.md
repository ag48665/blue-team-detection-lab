# Lab03 - Living Off The Land Binaries (LOLBins) Detection

## Objective

Detect the execution of commonly abused Windows Living Off The Land Binaries (LOLBins) using Sysmon Process Creation events.

---

## Scenario

A Security Operations Center (SOC) analyst investigates the execution of trusted Windows utilities that are frequently abused by attackers to evade detection.

The laboratory demonstrates how to identify suspicious LOLBin activity, analyze Sysmon logs, map behavior to MITRE ATT&CK, and develop detection rules.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Windows 11 |
| Monitoring | Sysmon |
| Detection | Sigma |
| SIEM | Splunk / Microsoft Sentinel |
| Framework | MITRE ATT&CK |

---

## Simulated LOLBins

- Certutil
- BITSAdmin
- Rundll32
- Regsvr32

---

## Investigation

The following Windows binaries were executed during the laboratory:

| Binary | Command |
|--------|---------|
| Certutil | `certutil.exe -hashfile C:\Windows\System32\notepad.exe SHA256` |
| BITSAdmin | `bitsadmin.exe /list` |
| Rundll32 | `rundll32.exe shell32.dll,Control_RunDLL` |
| Regsvr32 | `regsvr32.exe /?` |

All executions generated Sysmon Event ID 1 (Process Creation) logs.

---

## Detection

Detection focuses on monitoring:

- Process Creation (Sysmon Event ID 1)
- Suspicious LOLBins
- Command-line arguments
- Parent process relationships

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| System Binary Proxy Execution | T1218 |
| BITS Jobs | T1197 |
| Rundll32 | T1218.011 |
| Regsvr32 | T1218.010 |

---

## Detection Rules

- Sigma
- Splunk SPL
- Microsoft Sentinel (KQL)

---

## Evidence

| Screenshot | Description |
|------------|-------------|
| 01-sysmon-certutil-process-create.png | Sysmon Event ID 1 – Certutil execution |
| 02-sysmon-bitsadmin-process-create.png | Sysmon Event ID 1 – BITSAdmin execution |
| 03-sysmon-rundll32-process-create.png | Sysmon Event ID 1 – Rundll32 execution |
| 04-sysmon-regsvr32-process-create.png | Sysmon Event ID 1 – Regsvr32 execution |

---

## Lessons Learned

- LOLBins are trusted Windows binaries frequently abused by attackers.
- Detection should focus on command-line arguments rather than process names alone.
- Sysmon Event ID 1 provides valuable visibility into process execution.
- Sigma rules can detect suspicious LOLBin usage across multiple SIEM platforms.