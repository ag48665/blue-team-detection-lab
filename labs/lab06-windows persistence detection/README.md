# Lab 06 — Windows Persistence Detection

## Objective

Detect Windows persistence established through Registry Run Keys.

## Tools

- Windows 11
- Sysmon
- Event Viewer
- PowerShell
- Sigma
- Microsoft Sentinel (KQL)
- Splunk

## MITRE ATT&CK

- T1547.001 – Registry Run Keys / Startup Folder

## Detection

- Sysmon Event ID 13
- Sigma Rule
- KQL Query
- Splunk Search

## Evidence

- Registry Run Key created
- Sysmon Event ID 13 captured
- Screenshots included