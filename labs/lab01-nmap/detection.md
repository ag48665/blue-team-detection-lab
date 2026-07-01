# Detection

Potential Indicators:

- High number of SYN packets
- Sequential TCP connection attempts
- Multiple destination ports
- ICMP Echo Requests
- TCP SYN scan behaviour

Possible Detection Sources

- Firewall Logs
- IDS/IPS
- Sysmon
- Zeek
- Suricata
- Wireshark

Recommended Detection Logic

Detect multiple connection attempts from one source IP to many destination ports within a short time window.