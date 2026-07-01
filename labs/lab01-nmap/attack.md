# Attack Execution

Reconnaissance was performed using Nmap.

## Host Discovery

```bash
nmap -sn 192.168.56.0/24
```

## Port Scan

```bash
nmap -sS 192.168.56.101
```

## Service Detection

```bash
nmap -sV 192.168.56.101
```

## Aggressive Scan

```bash
nmap -A 192.168.56.101
```

Purpose:

- Identify live hosts
- Enumerate services
- Identify operating system
- Gather attack surface