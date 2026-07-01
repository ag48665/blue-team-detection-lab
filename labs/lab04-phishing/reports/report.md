# Incident Report

## Case ID

PHISH-001

---

## Executive Summary

A phishing email was analyzed to determine whether it posed a security risk.

The message attempted to convince the recipient to verify ownership of an email account using an embedded hyperlink.

The destination domain differed from the sender's domain, indicating a likely phishing attempt.

---

## Classification

**Confirmed Phishing**

---

## Indicators of Compromise

- Sender: sues@nnwifi.com
- Domain: nnwifi.com
- URL: serverviro.com.co

---

## MITRE ATT&CK

- T1566
- T1566.002

---

## Recommended Actions

- Block malicious domains.
- Quarantine similar emails.
- Enable SPF, DKIM, and DMARC.
- Train users to recognize phishing attempts.
- Enable Multi-Factor Authentication (MFA).

---

## Lessons Learned

User awareness combined with email security controls significantly reduces the likelihood of successful phishing attacks.