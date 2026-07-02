# 🛡️ Blue Team Detection Lab

![Status](https://img.shields.io/badge/Status-Active-success)
![Platform](https://img.shields.io/badge/Platform-Windows%2011-green)
![MITRE](https://img.shields.io/badge/MITRE-ATT%26CK-red)
![Sigma](https://img.shields.io/badge/Sigma-Rules-blue)
![KQL](https://img.shields.io/badge/KQL-Microsoft%20Sentinel-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

# 📖 About

This repository contains practical **Blue Team**, **Detection Engineering**, and **SOC Investigation** labs built on real Windows telemetry.

The objective is to demonstrate practical experience in:

- Security Operations Center (SOC)
- Detection Engineering
- Threat Hunting
- Incident Response
- Windows Event Log Analysis
- Sysmon Analysis
- MITRE ATT&CK Mapping
- Sigma Rule Development
- Microsoft Sentinel (KQL)
- Splunk SPL
- IOC Analysis

---

# 📊 Repository Statistics

- ✅ 6 Completed Detection Labs
- ✅ Sigma Rules
- ✅ Microsoft Sentinel (KQL) Queries
- ✅ Splunk SPL Searches
- ✅ IOC Documentation
- ✅ MITRE ATT&CK Mapping
- ✅ Investigation Reports
- 🚧 Repository under continuous development

---

# 🛠️ Technologies

- Windows 11
- Sysmon
- Event Viewer
- PowerShell
- Windows Registry
- Microsoft Defender
- Nmap
- Sigma
- Microsoft Sentinel (KQL)
- Splunk SPL
- MITRE ATT&CK

---

# 📂 Repository Structure

```text
blue-team-detection-lab
│
├── detections
│   ├── sigma
│   ├── kql
│   ├── splunk
│   └── yara
│
├── labs
├── reports
├── screenshots
├── scripts
└── docs
```

---

# 🧪 Labs

| Lab | Topic | Status |
|------|-------|:------:|
| Lab01 | Nmap Reconnaissance Detection | ✅ |
| Lab02 | Suspicious PowerShell Detection | ✅ |
| Lab03 | LOLBins Detection | ✅ |
| Lab04 | Phishing Investigation | ✅ |
| Lab05 | Ransomware Investigation | ✅ |
| Lab06 | Windows Persistence Detection | ✅ |
| Lab07 | Credential Access Detection | ⏳ |
| Lab08 | Threat Hunting | ⏳ |
| Lab09 | Lateral Movement Detection | ⏳ |
| Lab10 | Incident Response Case Study | ⏳ |


---

# 📸 Lab Highlights

## Lab02 – Suspicious PowerShell Detection

Sysmon Event ID 1 showing suspicious PowerShell execution.

![PowerShell Sysmon Event](labs/lab02-powershell/screenshots/03-sysmon-process-creation.png)

---

## Lab03 – LOLBins Detection

Detection of LOLBin execution using Sysmon telemetry.

![Certutil Sysmon Event](labs/lab03-lolbins/screenshots/01-sysmon-certutil-process-create.png)

---

## Lab05 – Ransomware Investigation

Simulated ransomware activity with PowerShell and file modifications.

![Ransomware Simulation](labs/lab05-ransomware/screenshots/02-simulation.png)

---

## Lab06 – Windows Persistence Detection

Registry Run Key persistence detected using Sysmon Event ID 13.

![Run Key Detection](labs/lab06-windows%20persistence%20detection/screenshots/03-sysmon-runkey-details.png)

---

# 🧠 Detection Content

## Sigma Rules

- Suspicious PowerShell Execution
- Suspicious Certutil Usage
- Suspicious BITSAdmin Usage
- Suspicious Rundll32 Execution
- Suspicious Regsvr32 Execution
- Ransomware Process Execution
- Registry Run Key Persistence

### Microsoft Sentinel (KQL)

- PowerShell Detection
- Certutil Detection
- BITSAdmin Detection
- Rundll32 Detection
- Ransomware Detection
- Registry Run Key Detection

### Splunk SPL

- Suspicious PowerShell
- LOLBins Detection
- Ransomware Activity
- Registry Run Key Persistence

---

# 📚 Documentation

Each completed lab includes:

- Investigation Report
- Detection Strategy
- IOC Documentation
- MITRE ATT&CK Mapping
- Detection Recommendations
- Screenshots
- Detection Rules
- Supporting Scripts (where applicable)

---

# 🎯 Skills Demonstrated

- Windows Event Log Analysis
- Sysmon Investigation
- Detection Engineering
- Threat Hunting
- Incident Response
- Registry Persistence Analysis
- PowerShell Analysis
- LOLBins Detection
- IOC Analysis
- Sigma Rule Development
- Microsoft Sentinel (KQL)
- Splunk SPL
- MITRE ATT&CK Mapping

---

# 🚀 Roadmap

- [x] Lab01 – Nmap Reconnaissance Detection
- [x] Lab02 – Suspicious PowerShell Detection
- [x] Lab03 – LOLBins Detection
- [x] Lab04 – Phishing Investigation
- [x] Lab05 – Ransomware Investigation
- [x] Lab06 – Windows Persistence Detection
- [ ] Lab07 – Credential Access Detection
- [ ] Lab08 – Threat Hunting
- [ ] Lab09 – Lateral Movement Detection
- [ ] Lab10 – Incident Response Case Study

---

# 🎯 Goal

Build a professional Blue Team portfolio demonstrating practical Security Operations Center (SOC), Detection Engineering, Threat Hunting, and Incident Response skills using real Windows telemetry, Sysmon logs, Sigma rules, Microsoft Sentinel (KQL), Splunk SPL, and MITRE ATT&CK.

---

## 👩‍💻 Author

**Agata Gabara**

Blue Team • SOC Analyst • Detection Engineering

GitHub: https://github.com/ag48665

