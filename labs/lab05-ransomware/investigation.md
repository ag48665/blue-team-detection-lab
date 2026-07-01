# Investigation

## Event Summary

The investigation identified several behaviors commonly associated with ransomware attacks.

### Observed Activity

- Suspicious PowerShell execution
- LOLBin usage
- File modification activity
- Potential encryption behavior

---

## Analysis

Although no ransomware was executed, the observed behavior closely resembles techniques used during real ransomware incidents.

Analysts should investigate:

- Parent processes
- PowerShell command-line arguments
- File creation spikes
- Sysmon Event ID 1
- Windows Event ID 4688

---

## Detection Opportunities

Monitor:

- powershell.exe
- certutil.exe
- bitsadmin.exe
- rundll32.exe
- regsvr32.exe

Detect:

- Multiple file modifications
- Rapid process creation
- Unexpected PowerShell execution

---

## Conclusion

The investigation demonstrates how analysts can detect ransomware-like behavior before encryption begins.

## Evidence

The ransomware simulation was executed using a PowerShell script.

The script renamed 50 test files from:

```
file1.txt
```

to

```
file1.locked
```

Sysmon successfully recorded the execution of `powershell.exe` (Event ID 1), providing telemetry that can be used during threat hunting and incident investigations.

No encryption was performed and no production data was modified.

