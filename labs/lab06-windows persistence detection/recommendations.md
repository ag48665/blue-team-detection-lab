# Recommendations

## Prevention

- Enable Sysmon Registry monitoring.
- Monitor Registry Run Keys.
- Restrict PowerShell execution where appropriate.
- Enable Microsoft Defender ASR rules.

---

## Detection

Monitor:

- Event ID 13
- Registry Run Keys
- PowerShell
- LOLBins

---

## Response

- Remove malicious Run Key.
- Isolate the endpoint.
- Investigate parent process.
- Review additional persistence mechanisms.