# Open Ports Analysis

## Port 135 - Microsoft RPC

Purpose:
Windows Remote Procedure Call service.

Risk:
Frequently targeted during network reconnaissance and lateral movement.

Recommendation:
Restrict remote access where possible and monitor RPC-related events.

---

## Port 139 - NetBIOS

Purpose:
Legacy Windows file and printer sharing.

Risk:
May expose shared resources and support enumeration.

Recommendation:
Disable NetBIOS if not required.

---

## Port 445 - SMB

Purpose:
Windows file sharing.

Risk:
High-value target for ransomware and lateral movement.

Examples:

- EternalBlue
- WannaCry
- PsExec

Recommendation:

- Enable SMB signing
- Disable SMBv1
- Restrict network access

---

## Port 2179 - Hyper-V VMRDP

Purpose:
Hyper-V virtual machine connection.

Recommendation:
Limit administrative access.

---

## Port 5432 - PostgreSQL

Purpose:
Database service.

Recommendation:

- Restrict remote access
- Use strong authentication
- Monitor failed logins

---

## Port 8000

Purpose:
Splunk Web Interface

Recommendation:

Restrict access using firewall rules.

---

## Port 8089

Purpose:
Splunk Management Port

Recommendation:

Allow access only from trusted administrators.

---

## Port 16992

Purpose:
Intel Active Management Technology

Risk:

Can allow remote management if configured.

Recommendation:

Disable Intel AMT if unused.