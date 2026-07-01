# Recommendations

## Prevention

- Enable Sysmon.
- Enable PowerShell logging.
- Restrict LOLBin usage where possible.
- Use application allow-listing.
- Enable Microsoft Defender tamper protection.

---

## Detection

Monitor:

- PowerShell
- LOLBins
- File modification spikes
- Unexpected process trees

---

## Response

- Isolate affected endpoint.
- Preserve forensic evidence.
- Reset compromised credentials.
- Investigate lateral movement.