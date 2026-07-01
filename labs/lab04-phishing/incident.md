# Incident Report

## Incident ID

PHISH-001

---

## Incident Date

2026-07-01

---

## Analyst

Agata Gabara

---

## Severity

Medium

---

## Status

Closed

---

## Incident Type

Phishing Email

---

## Summary

A suspicious email was reported by a user requesting confirmation of email account ownership.

The email contained an embedded HTML button labeled **"Confirm ownership"** that redirected the recipient to an external domain.

The message used social engineering techniques to persuade the recipient to click the link.

---

## Investigation

The email was analyzed by reviewing:

- Email headers
- Sender information
- Embedded hyperlinks
- HTML content
- Indicators of Compromise (IOCs)

The embedded hyperlink pointed to:

```
serverviro.com.co
```

The sender domain differed from the destination domain, which is a common phishing indicator.

---

## Findings

- HTML formatted email
- Account verification theme
- Suspicious external hyperlink
- Social engineering language
- Different sender and destination domains

---

## Impact

No evidence of user interaction was identified.

The email was classified as a phishing attempt.

---

## Response

- Email identified as phishing.
- Indicators of Compromise documented.
- Malicious domain recommended for blocking.
- Users should be advised not to interact with similar messages.
- Enable Multi-Factor Authentication (MFA).

---

## Result

**Confirmed phishing attempt.**
