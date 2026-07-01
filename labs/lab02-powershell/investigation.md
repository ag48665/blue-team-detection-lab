# Investigation

## Event Summary

A Sysmon Process Creation (Event ID 1) was generated after executing a PowerShell command with the **ExecutionPolicy Bypass** parameter.

### Event Details

| Field | Value |
|--------|-------|
| Event ID | 1 |
| Process | powershell.exe |
| Parent Process | powershell.exe |
| User | DESKTOP-2RBAGI7\PC |
| Command Line | powershell.exe -ExecutionPolicy Bypass -Command Get-Process |

---

## Analysis

The command executed was benign and intended for laboratory purposes.

However, the use of the `-ExecutionPolicy Bypass` parameter is commonly observed in real-world attacks to circumvent PowerShell execution restrictions.

Security monitoring solutions should generate alerts when this parameter is used outside of approved administrative activities.

---

## Detection Opportunities

Monitor:

- Process Creation (Sysmon Event ID 1)
- ExecutionPolicy Bypass
- EncodedCommand
- NoProfile
- Hidden PowerShell Windows

---

## Conclusion

The activity was successfully detected through Sysmon logging.

This laboratory demonstrates how defenders can identify suspicious PowerShell execution and build detection rules using Sigma and SIEM platforms.