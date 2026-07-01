# Investigation

# Case 01 - Certutil

## Event Summary

Sysmon detected the execution of **certutil.exe**.

### Event Details

| Field | Value |
|--------|-------|
| Event ID | 1 |
| Process | certutil.exe |
| Parent Process | powershell.exe |
| User | DESKTOP-2RBAGI7\PC |
| Command Line | certutil.exe -hashfile C:\Windows\System32\notepad.exe SHA256 |

---

## Analysis

The command calculated the SHA256 hash of `notepad.exe`.

This activity was performed for laboratory purposes.

Although harmless, **certutil.exe** is commonly abused for:

- Downloading payloads
- Encoding files
- Decoding payloads

---

## Detection Opportunities

Monitor:

- certutil.exe
- -urlcache
- -encode
- -decode
- -split

---

# Case 02 - BITSAdmin

## Event Summary

Sysmon detected the execution of **bitsadmin.exe**.

### Event Details

| Field | Value |
|--------|-------|
| Event ID | 1 |
| Process | bitsadmin.exe |
| Parent Process | powershell.exe |
| User | DESKTOP-2RBAGI7\PC |
| Command Line | bitsadmin.exe /list |

---

## Analysis

The command listed existing BITS jobs.

This command is benign.

However, attackers frequently abuse **BITSAdmin** for:

- Downloading malware
- Persistence
- Background file transfers

---

## Detection Opportunities

Monitor:

- bitsadmin.exe
- /transfer
- /create
- /resume
- /addfile

---

## MITRE ATT&CK

- T1197 – BITS Jobs

---

## Conclusion

Both **certutil.exe** and **bitsadmin.exe** are legitimate Windows utilities.

Because they are trusted binaries (LOLBins), attackers frequently use them to evade detection.

Security teams should monitor suspicious command-line arguments rather than simply alerting on process execution.

---

# Case 03 - Rundll32

## Event Summary

Sysmon detected the execution of **rundll32.exe**.

### Event Details

| Field | Value |
|--------|-------|
| Event ID | 1 |
| Process | rundll32.exe |
| Parent Process | powershell.exe |
| User | DESKTOP-2RBAGI7\PC |
| Command Line | rundll32.exe shell32.dll,Control_RunDLL |

---

## Analysis

The command launched the Windows Control Panel using **rundll32.exe**.

Although this execution is legitimate, attackers frequently abuse **rundll32.exe** to execute malicious DLLs while blending into normal Windows activity.

Examples of suspicious usage include:

- Executing remote DLLs
- Launching malicious DLL exports
- Bypassing application controls

---

## Detection Opportunities

Monitor:

- rundll32.exe
- Unusual DLL paths
- Network-accessible DLLs
- Suspicious parent processes

---

## MITRE ATT&CK

- T1218.011 - Rundll32

---

## Conclusion

Rundll32 is a trusted Windows binary frequently abused by attackers. Detection should focus on unusual DLL paths and suspicious command-line arguments rather than simply detecting process execution.

---

# Case 04 - Regsvr32

## Event Summary

Sysmon detected the execution of **regsvr32.exe**.

### Event Details

| Field | Value |
|--------|-------|
| Event ID | 1 |
| Process | regsvr32.exe |
| Parent Process | powershell.exe |
| User | DESKTOP-2RBAGI7\PC |
| Command Line | regsvr32.exe /? |

---

## Analysis

The command displayed the Regsvr32 usage information.

This execution was performed for laboratory purposes and is benign.

However, **regsvr32.exe** is a trusted Windows binary that attackers can abuse to execute malicious scriptlets or COM objects.

Common malicious usage includes:

- Remote scriptlet execution
- COM registration abuse
- Defense evasion

---

## Detection Opportunities

Monitor:

- regsvr32.exe
- /i:
- scrobj.dll
- Remote URLs
- Suspicious parent processes

---

## MITRE ATT&CK

- T1218.010 – Regsvr32

---

## Conclusion

Regsvr32 is a legitimate Windows utility that can be abused for code execution and defense evasion. Analysts should focus on unusual command-line arguments and network-related activity.
