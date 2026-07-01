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

| Screenshot | Description |
|------------|-------------|
| 01-registry-run-key.png | PowerShell creates Registry Run Key |
| 02-sysmon-registry-event13.png | Sysmon Event ID 13 detected registry modification |
| 03-sysmon-runkey-details.png | Event details showing Run Key path and value |