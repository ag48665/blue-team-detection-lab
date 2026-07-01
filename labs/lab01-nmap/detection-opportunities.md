# Detection Opportunities

Blue Team can detect reconnaissance activity using:

## Firewall Logs

Look for multiple TCP connection attempts from a single host.

---

## IDS/IPS

Detect:

- SYN Scan
- Service Enumeration
- OS Fingerprinting

---

## Windows Firewall Logs

Monitor repeated inbound connection attempts.

---

## Sysmon

Relevant Events

- Event ID 3
- Network Connections

---

## Splunk Example

Possible searches:

- Multiple destination ports
- High connection rate
- Short time window scanning

---

## Zeek

Detect

- Port Scan
- Service Discovery
- Connection Burst

---

## Suricata

Possible alerts

- ET SCAN NMAP
- SYN Scan Detection