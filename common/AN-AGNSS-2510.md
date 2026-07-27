# Application Note AN-AGNSS-2510

## GNSS Ephemeris Data — FTP Access via AGNSS Casting Service

| Document | |
|:---------|:------------|
| **Number** | AN-AGNSS-2510 |
| **Revision** | 1.0 |
| **Date** | 2026-07-14 |
| **Status** | Released |

---

## 1. Introduction

This application note describes how to access high-rate GNSS ephemeris (broadcast ephemeris) data through the DATAGNSS AGNSS casting service. The data is pulled in real-time from the upstream AGNSS source and made available via a public FTP server, refreshed every **5 minutes**.

Target audience: GNSS receiver firmware developers, base station operators, and positioning algorithm engineers who need up-to-date satellite ephemeris for assisted GNSS (A-GNSS) or real-time positioning.

---

## 2. FTP Server Information

| Parameter | Value |
|:----------|:------|
| Protocol | FTP (plain, not FTPS) |
| Host | `agnss.datasource.ltd` |
| Port | `21` |
| Authentication | Username + Password |
| Connection Limit | Max **2** concurrent connections per IP |

> **To obtain login credentials**, contact **info@datagnss.com** and reference this application note (AN-AGNSS-2510). A dedicated account will be provisioned for your organization.

---

## 3. Available Data Files

All files listed below are updated every **5 minutes** from the upstream AGNSS source.

| File | Description |
|:-----|:------------|
| `HD_BDS.hdb` | BeiDou BDS broadcast ephemeris |
| `HD_GPS.hdb` | GPS broadcast ephemeris |
| `HD_GAL.hdb` | Galileo broadcast ephemeris |
| `HD_GLO.hdb` | GLONASS broadcast ephemeris |
| `HD_GPS_BDS.hdb` | GPS + BeiDou combined |
| `HD_GPS_BDS_GAL_QZS.hdb` | GPS + BeiDou + Galileo + QZSS |
| `HD_GPS_BDS_GAL_GLO_QZS.hdb` | All GNSS systems combined |


---

## 4. Access Methods

### 4.1 Command Line (curl)

```bash
# List available files
curl --user <username>:<password> ftp://agnss.datasource.ltd:21/

# Download a single file
curl --user <username>:<password> \
  ftp://agnss.datasource.ltd:21/HD_GPS.hdb \
  -o HD_GPS.hdb

# Batch download all .hdb files
curl --user <username>:<password> ftp://agnss.datasource.ltd:21/ \
  | grep ".hdb" \
  | awk '{print $NF}' \
  | xargs -I{} curl --user <username>:<password> \
    ftp://agnss.datasource.ltd:21/{} -o {}
```

### 4.2 Windows File Explorer

Type directly into the address bar:

```
ftp://<username>:<password>@agnss.datasource.ltd:21
```

Press Enter — the remote directory appears as a local folder for browsing and copying.

### 4.3 FTP Client (FileZilla / WinSCP / etc.)

| Field | Value |
|:------|:-------|
| Protocol | FTP |
| Host | `agnss.datasource.ltd` |
| Port | `21` |
| Encryption | No encryption (plain FTP) |
| Logon Type | Normal |
| User | *provided by DATAGNSS* |
| Password | *provided by DATAGNSS* |

---

## 5. Limitations

- **Download only** — upload and delete operations are not permitted.
- Max **2 concurrent connections** per IP address. Additional connections will be rejected.
- Plain FTP (no FTPS/TLS) — data is transferred in cleartext. Suitable for automated ingestion pipelines behind firewalls.

---

## 6. Revision History

| Rev | Date | Author | Changes |
|:----|:-----|:-------|:--------|
| 1.0 | 2026-07-14 | DATAGNSS | Initial release |

---

## 7. Contact

For access requests, technical questions, or support inquiries:

**DATAGNSS Co., Ltd.**  
Email: **info@datagnss.com**

Please reference **AN-AGNSS-2510** in your correspondence.
