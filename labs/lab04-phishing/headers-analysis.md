# Header Analysis

## Overview

The email headers were analyzed to identify the origin of the message, verify the sender, and determine whether the email showed characteristics of a phishing attack.

---

## Email Information

| Field | Value |
|--------|-------|
| Date | 05 May 2020 |
| Subject | Encoded Subject (RFC 2047 UTF-8) |
| Sender Name | malware-traffic-analysis.net Support |
| Sender Address | sues@nnwifi.com |
| Recipient | brad@malware-traffic-analysis.net |

---

## Mail Flow

The email passed through several SMTP servers before reaching the recipient.

### Observed Servers

| IP Address | Description |
|------------|-------------|
| 94.100.31.27 | Sending SMTP server |
| 173.46.174.49 | Internal mail relay |

The Received headers show the route the email followed before delivery.

---

## Header Observations

### MIME Encoded Subject

The email subject is encoded using the MIME (RFC 2047) format.

This is common for emails containing non-ASCII characters and is not malicious by itself.

---

### HTML Email

The email uses HTML formatting.

HTML emails are common, but they allow attackers to hide malicious hyperlinks behind buttons or legitimate-looking text.

---

### Sender Verification

The sender address is:

```
sues@nnwifi.com
```

Further verification of SPF, DKIM, and DMARC policies is recommended to determine whether the sender is authorized to send emails for this domain.

---

## Content Analysis

The email requested the recipient to confirm ownership of the email address.

The message attempted to create urgency by asking the user to verify their account.

The embedded HTML button displayed:

> Confirm ownership

However, the hyperlink redirected the user to:

```
serverviro.com.co
```

instead of the sender's domain.

This difference between the sender domain and destination domain is a common phishing indicator.

---

## Phishing Indicators

The following indicators were identified:

- HTML formatted email
- Embedded external hyperlink
- Different sender and destination domains
- Account verification request
- Social engineering language
- Encoded MIME subject

---

## Analyst Assessment

Although the email headers alone do not prove malicious activity, the combination of:

- HTML formatting,
- embedded hyperlink,
- account verification request,
- and domain mismatch

strongly suggests a phishing attempt.

---

## Conclusion

The email was classified as a phishing message.

The identified Indicators of Compromise (IOCs) should be documented, monitored, and blocked where appropriate.

Security teams should also verify SPF, DKIM, and DMARC records to determine whether the sender domain was spoofed.