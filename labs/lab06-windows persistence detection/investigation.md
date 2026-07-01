# Investigation

## Event Summary

A Registry Run Key was created to establish persistence.

### Registry Path

```
HKCU\Software\Microsoft\Windows\CurrentVersion\Run
```

### Registry Value

```
BlueTeamLab = notepad.exe
```

---
### Observed Process

Process:
powershell.exe

Action:
New-ItemProperty

Target:
HKCU\Software\Microsoft\Windows\CurrentVersion\Run

Value:
BlueTeamLab = notepad.exe

---

## Evidence

Sysmon Event ID 13 successfully captured the registry modification.

Observed values:

| Field | Value |
|-------|-------|
| Event ID | 13 |
| Process | powershell.exe |
| Registry Key | HKCU\Software\Microsoft\Windows\CurrentVersion\Run\BlueTeamLab |
| Registry Value | notepad.exe |
| User | DESKTOP-2RBAGI7\PC |

---

## Analysis

Registry Run Keys are a common persistence mechanism used by attackers.

Programs configured under this registry path automatically execute after user logon.

Although this laboratory used **notepad.exe**, threat actors frequently configure:

- powershell.exe
- cmd.exe
- rundll32.exe
- regsvr32.exe
- custom malware

---

## Detection Opportunities

Monitor:

- Sysmon Event ID 12
- Sysmon Event ID 13

Watch for modifications to:

```
HKCU\Software\Microsoft\Windows\CurrentVersion\Run
```

---

## Conclusion

Persistence was successfully simulated and detected using Sysmon Event ID 13.