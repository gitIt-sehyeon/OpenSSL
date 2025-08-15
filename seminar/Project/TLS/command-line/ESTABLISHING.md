# Establishing a TLS client connection on the command line

## TLS handshaking

```bash
$ openssl s_client -connect example.org:443 -servername example.org
CONNECTED(00000003)
depth=2 C = US, O = DigiCert Inc, OU = www.digicert.com, CN = DigiCert Global Root G3
verify return:1
depth=1 C = US, O = DigiCert Inc, CN = DigiCert Global G3 TLS ECC SHA384 2020 CA1
verify return:1
depth=0 C = US, ST = California, L = Los Angeles, O = Internet Corporation for Assigned Names and Numbers, CN = *.example.org
verify return:1
---
Certificate chain
 0 s:C = US, ST = California, L = Los Angeles, O = Internet Corporation for Assigned Names and Numbers, CN = *.example.org
   i:C = US, O = DigiCert Inc, CN = DigiCert Global G3 TLS ECC SHA384 2020 CA1
   a:PKEY: id-ecPublicKey, 256 (bit); sigalg: ecdsa-with-SHA384
   v:NotBefore: Jan 15 00:00:00 2025 GMT; NotAfter: Jan 15 23:59:59 2026 GMT
 1 s:C = US, O = DigiCert Inc, CN = DigiCert Global G3 TLS ECC SHA384 2020 CA1
   i:C = US, O = DigiCert Inc, OU = www.digicert.com, CN = DigiCert Global Root G3
   a:PKEY: id-ecPublicKey, 384 (bit); sigalg: ecdsa-with-SHA384
   v:NotBefore: Apr 14 00:00:00 2021 GMT; NotAfter: Apr 13 23:59:59 2031 GMT
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIFnTCCBSSgAwIBAgIQByKnSbVYR2GW1VREXtvSVDAKBggqhkjOPQQDAzBZMQsw
CQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMTMwMQYDVQQDEypEaWdp
Q2VydCBHbG9iYWwgRzMgVExTIEVDQyBTSEEzODQgMjAyMCBDQTEwHhcNMjUwMTE1
MDAwMDAwWhcNMjYwMTE1MjM1OTU5WjCBjjELMAkGA1UEBhMCVVMxEzARBgNVBAgT
CkNhbGlmb3JuaWExFDASBgNVBAcTC0xvcyBBbmdlbGVzMTwwOgYDVQQKEzNJbnRl
cm5ldCBDb3Jwb3JhdGlvbiBmb3IgQXNzaWduZWQgTmFtZXMgYW5kIE51bWJlcnMx
FjAUBgNVBAMMDSouZXhhbXBsZS5vcmcwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNC
AARvcLhq3uFMuzkqpTXG4X8Wcw413owfBJMz4JcqnNnlgNb2+2F0TaF4fVoDpf8+
arlyqMYsxSxpUH/NbTudhW/Mo4IDljCCA5IwHwYDVR0jBBgwFoAUiiPrnmvX+Tdd
+W0hOXaaoWfeEKgwHQYDVR0OBBYEFBJFomWJllXyCp7B3wWf3VnuZbpRMCUGA1Ud
EQQeMByCDSouZXhhbXBsZS5vcmeCC2V4YW1wbGUub3JnMD4GA1UdIAQ3MDUwMwYG
Z4EMAQICMCkwJwYIKwYBBQUHAgEWG2h0dHA6Ly93d3cuZGlnaWNlcnQuY29tL0NQ
UzAOBgNVHQ8BAf8EBAMCA4gwHQYDVR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMC
MIGfBgNVHR8EgZcwgZQwSKBGoESGQmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9E
aWdpQ2VydEdsb2JhbEczVExTRUNDU0hBMzg0MjAyMENBMS0yLmNybDBIoEagRIZC
aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0R2xvYmFsRzNUTFNFQ0NT
SEEzODQyMDIwQ0ExLTIuY3JsMIGHBggrBgEFBQcBAQR7MHkwJAYIKwYBBQUHMAGG
GGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBRBggrBgEFBQcwAoZFaHR0cDovL2Nh
Y2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0R2xvYmFsRzNUTFNFQ0NTSEEzODQy
MDIwQ0ExLTIuY3J0MAwGA1UdEwEB/wQCMAAwggF+BgorBgEEAdZ5AgQCBIIBbgSC
AWoBaAB3AJaXZL9VWJet90OHaDcIQnfp8DrV9qTzNm5GpD8PyqnGAAABlGd6xV4A
AAQDAEgwRgIhAO28p5oX3gxA0RJJ/2MaZ3zzMcyZggy2lwVQnqSpX5R3AiEAqUWx
+2l1xeojShV0ab+MbcPNg8bYvw1xb32sJOYuxKkAdQBkEcRspBLsp4kcogIuALyr
TygH1B41J6vq/tUDyX3N8AAAAZRnesVjAAAEAwBGMEQCIAzHUguIG8H+0JF72uTL
HatlorikPR/D3P/HRsyrF+44AiBGH0KcLNqcj2ZGEjChiiRfOjLdUrFKg6jnMIoV
FMlYFwB2AEmcm2neHXzs/DbezYdkprhbrwqHgBnRVVL76esp3fjDAAABlGd6xXgA
AAQDAEcwRQIgRESM73pynQ140QSowDrC49oQXZut2nYQc2DYrX26VXgCIQDRBYhi
5U3bC19GT2EzfDLr38vkM5yNNYnYlY1En7+TczAKBggqhkjOPQQDAwNnADBkAjBH
fYRsXBNHMfs6MlztuZRrCRw0ERMhMSHe7Al5nSDz+cP3KHcdxkRWtf1xFksSljUC
ME1pXV7GC3Vq2Pmd0wPkRSngBR9Hm2X8srwINo/QvZ91oS7dUDseaBJ5wOb5oHmA
jw==
-----END CERTIFICATE-----
subject=C = US, ST = California, L = Los Angeles, O = Internet Corporation for Assigned Names and Numbers, CN = *.example.org
issuer=C = US, O = DigiCert Inc, CN = DigiCert Global G3 TLS ECC SHA384 2020 CA1
---
No client certificate CA names sent
Peer signing digest: SHA256
Peer signature type: ECDSA
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 2724 bytes and written 393 bytes
Verification: OK
---
New, TLSv1.3, Cipher is TLS_AES_256_GCM_SHA384
Server public key is 256 bit
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
Early data was not sent
Verify return code: 0 (ok)
---
---
Post-Handshake New Session Ticket arrived:
SSL-Session:
    Protocol  : TLSv1.3
    Cipher    : TLS_AES_256_GCM_SHA384
    Session-ID: ***MASKED***
    Session-ID-ctx:
    Resumption PSK: ***MASKED***
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 83100 (seconds)
    TLS session ticket: ***MASKED***

    Start Time: 1754845305
    Timeout   : 7200 (sec)
    Verify return code: 0 (ok)
    Extended master secret: no
    Max Early Data: 0
---
read R BLOCK
---
Post-Handshake New Session Ticket arrived:
SSL-Session:
    Protocol  : TLSv1.3
    Cipher    : TLS_AES_256_GCM_SHA384
    Session-ID: ***MASKED***
    Session-ID-ctx:
    Resumption PSK: ***MASKED***
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 83100 (seconds)
    TLS session ticket: ***MASKED***

    Start Time: 1754845305
    Timeout   : 7200 (sec)
    Verify return code: 0 (ok)
    Extended master secret: no
    Max Early Data: 0
---
read R BLOCK

```

---

## Also verify certificate and host name
```bash
$ openssl s_client \
  -connect example.org:443 \
  -servername example.org \
  -verify_return_error \
  -verify_hostname example.org
CONNECTED(00000003)
depth=2 C = US, O = DigiCert Inc, OU = www.digicert.com, CN = DigiCert Global Root G3
verify return:1
depth=1 C = US, O = DigiCert Inc, CN = DigiCert Global G3 TLS ECC SHA384 2020 CA1
verify return:1
depth=0 C = US, ST = California, L = Los Angeles, O = Internet Corporation for Assigned Names and Numbers, CN = *.example.org
verify return:1
---
Certificate chain
 0 s:C = US, ST = California, L = Los Angeles, O = Internet Corporation for Assigned Names and Numbers, CN = *.example.org
   i:C = US, O = DigiCert Inc, CN = DigiCert Global G3 TLS ECC SHA384 2020 CA1
   a:PKEY: id-ecPublicKey, 256 (bit); sigalg: ecdsa-with-SHA384
   v:NotBefore: Jan 15 00:00:00 2025 GMT; NotAfter: Jan 15 23:59:59 2026 GMT
 1 s:C = US, O = DigiCert Inc, CN = DigiCert Global G3 TLS ECC SHA384 2020 CA1
   i:C = US, O = DigiCert Inc, OU = www.digicert.com, CN = DigiCert Global Root G3
   a:PKEY: id-ecPublicKey, 384 (bit); sigalg: ecdsa-with-SHA384
   v:NotBefore: Apr 14 00:00:00 2021 GMT; NotAfter: Apr 13 23:59:59 2031 GMT
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIFnTCCBSSgAwIBAgIQByKnSbVYR2GW1VREXtvSVDAKBggqhkjOPQQDAzBZMQsw
CQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMTMwMQYDVQQDEypEaWdp
Q2VydCBHbG9iYWwgRzMgVExTIEVDQyBTSEEzODQgMjAyMCBDQTEwHhcNMjUwMTE1
MDAwMDAwWhcNMjYwMTE1MjM1OTU5WjCBjjELMAkGA1UEBhMCVVMxEzARBgNVBAgT
CkNhbGlmb3JuaWExFDASBgNVBAcTC0xvcyBBbmdlbGVzMTwwOgYDVQQKEzNJbnRl
cm5ldCBDb3Jwb3JhdGlvbiBmb3IgQXNzaWduZWQgTmFtZXMgYW5kIE51bWJlcnMx
FjAUBgNVBAMMDSouZXhhbXBsZS5vcmcwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNC
AARvcLhq3uFMuzkqpTXG4X8Wcw413owfBJMz4JcqnNnlgNb2+2F0TaF4fVoDpf8+
arlyqMYsxSxpUH/NbTudhW/Mo4IDljCCA5IwHwYDVR0jBBgwFoAUiiPrnmvX+Tdd
+W0hOXaaoWfeEKgwHQYDVR0OBBYEFBJFomWJllXyCp7B3wWf3VnuZbpRMCUGA1Ud
EQQeMByCDSouZXhhbXBsZS5vcmeCC2V4YW1wbGUub3JnMD4GA1UdIAQ3MDUwMwYG
Z4EMAQICMCkwJwYIKwYBBQUHAgEWG2h0dHA6Ly93d3cuZGlnaWNlcnQuY29tL0NQ
UzAOBgNVHQ8BAf8EBAMCA4gwHQYDVR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMC
MIGfBgNVHR8EgZcwgZQwSKBGoESGQmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9E
aWdpQ2VydEdsb2JhbEczVExTRUNDU0hBMzg0MjAyMENBMS0yLmNybDBIoEagRIZC
aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0R2xvYmFsRzNUTFNFQ0NT
SEEzODQyMDIwQ0ExLTIuY3JsMIGHBggrBgEFBQcBAQR7MHkwJAYIKwYBBQUHMAGG
GGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBRBggrBgEFBQcwAoZFaHR0cDovL2Nh
Y2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0R2xvYmFsRzNUTFNFQ0NTSEEzODQy
MDIwQ0ExLTIuY3J0MAwGA1UdEwEB/wQCMAAwggF+BgorBgEEAdZ5AgQCBIIBbgSC
AWoBaAB3AJaXZL9VWJet90OHaDcIQnfp8DrV9qTzNm5GpD8PyqnGAAABlGd6xV4A
AAQDAEgwRgIhAO28p5oX3gxA0RJJ/2MaZ3zzMcyZggy2lwVQnqSpX5R3AiEAqUWx
+2l1xeojShV0ab+MbcPNg8bYvw1xb32sJOYuxKkAdQBkEcRspBLsp4kcogIuALyr
TygH1B41J6vq/tUDyX3N8AAAAZRnesVjAAAEAwBGMEQCIAzHUguIG8H+0JF72uTL
HatlorikPR/D3P/HRsyrF+44AiBGH0KcLNqcj2ZGEjChiiRfOjLdUrFKg6jnMIoV
FMlYFwB2AEmcm2neHXzs/DbezYdkprhbrwqHgBnRVVL76esp3fjDAAABlGd6xXgA
AAQDAEcwRQIgRESM73pynQ140QSowDrC49oQXZut2nYQc2DYrX26VXgCIQDRBYhi
5U3bC19GT2EzfDLr38vkM5yNNYnYlY1En7+TczAKBggqhkjOPQQDAwNnADBkAjBH
fYRsXBNHMfs6MlztuZRrCRw0ERMhMSHe7Al5nSDz+cP3KHcdxkRWtf1xFksSljUC
ME1pXV7GC3Vq2Pmd0wPkRSngBR9Hm2X8srwINo/QvZ91oS7dUDseaBJ5wOb5oHmA
jw==
-----END CERTIFICATE-----
subject=C = US, ST = California, L = Los Angeles, O = Internet Corporation for Assigned Names and Numbers, CN = *.example.org
issuer=C = US, O = DigiCert Inc, CN = DigiCert Global G3 TLS ECC SHA384 2020 CA1
---
No client certificate CA names sent
Peer signing digest: SHA256
Peer signature type: ECDSA
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 2724 bytes and written 393 bytes
Verification: OK
Verified peername: example.org
---
New, TLSv1.3, Cipher is TLS_AES_256_GCM_SHA384
Server public key is 256 bit
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
Early data was not sent
Verify return code: 0 (ok)
---
---
Post-Handshake New Session Ticket arrived:
SSL-Session:
    Protocol  : TLSv1.3
    Cipher    : TLS_AES_256_GCM_SHA384
    Session-ID: ***MASKED***
    Session-ID-ctx:
    Resumption PSK: ***MASKED***
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 83100 (seconds)
    TLS session ticket: ***MASKED***

    Start Time: 1754845670
    Timeout   : 7200 (sec)
    Verify return code: 0 (ok)
    Extended master secret: no
    Max Early Data: 0
---
read R BLOCK
---
Post-Handshake New Session Ticket arrived:
SSL-Session:
    Protocol  : TLSv1.3
    Cipher    : TLS_AES_256_GCM_SHA384
    Session-ID: ***MASKED***
    Session-ID-ctx:
    Resumption PSK: ***MASKED***
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 83100 (seconds)
    TLS session ticket: ***MASKED***

    Start Time: 1754845670
    Timeout   : 7200 (sec)
    Verify return code: 0 (ok)
    Extended master secret: no
    Max Early Data: 0
---
read R BLOCK

```

---

## HTTP request

```bash
GET / HTTP/1.1
Host: example.org
Connection: close

HTTP/1.1 200 OK
Accept-Ranges: bytes
Content-Type: text/html
ETag: "84238dfc8092e5d9c0dac8ef93371a07:1736799080.121134"
Last-Modified: Mon, 13 Jan 2025 20:11:20 GMT
Content-Length: 1256
Cache-Control: max-age=427
Date: Sun, 10 Aug 2025 17:21:45 GMT
Alt-Svc: h3=":443"; ma=93600,h3-29=":443"; ma=93600
Connection: close

closed
```