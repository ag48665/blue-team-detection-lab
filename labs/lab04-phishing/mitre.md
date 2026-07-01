# MITRE ATT&CK Mapping

## Tactic

| Tactic | Description |
|---------|-------------|
| Initial Access | The attacker attempted to gain access through phishing. |

---

## Techniques

| Technique | ID |
|-----------|----|
| Phishing | T1566 |
| Spearphishing Link | T1566.002 |

---

## Detection Opportunities

Security teams should monitor:

- Suspicious sender domains
- Embedded hyperlinks
- Newly registered domains
- Email authentication failures (SPF, DKIM, DMARC)
- User reports of suspicious emails

---

## Data Sources

- Email Gateway Logs
- Microsoft Defender for Office 365
- Secure Email Gateway
- DNS Logs
- Proxy Logs

---

## Analyst Notes

The investigated email attempted to persuade the recipient to click an embedded hyperlink for account verification.

This behavior matches the MITRE ATT&CK Initial Access tactic using Spearphishing Links (T1566.002).