# Accepting a TLS Server connection on the command line

## Start TLS Server
```bash
$ openssl s_server \
  -port 4433 \
  -key server_keypair.pem \
  -cert server_cert.pem
Using default temp DH parameters
ACCEPT
```

---

## Client connect to Server

### Client
```bash
$ openssl s_client \
  -connect localhost:4433 \
  -verify_return_error \
  -verify_hostname localhost \
  -CAfile ca_cert.pem
CONNECTED(00000003)
Can't use SSL_get_servername
depth=1 CN = Root CA
verify return:1
depth=0 CN = localhost
verify return:1
---
Certificate chain
 0 s:CN = localhost
   i:CN = Root CA
   a:PKEY: ED448, 456 (bit); sigalg: ED448
   v:NotBefore: Aug 10 17:57:05 2025 GMT; NotAfter: Aug  8 17:57:05 2035 GMT
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIBgzCCAQOgAwIBAgIUHlhaqCxe5kZKVxfIU3p+jC7yyNowBQYDK2VxMBIxEDAO
BgNVBAMMB1Jvb3QgQ0EwHhcNMjUwODEwMTc1NzA1WhcNMzUwODA4MTc1NzA1WjAU
MRIwEAYDVQQDDAlsb2NhbGhvc3QwQzAFBgMrZXEDOgBkXrSDOyNwDGVfJ4x6wVPE
hB+xYGS3tQu/zyMQXk+J7xQ1JC+riDMAwBZur+U98M4Mya71AzdSpoCjUDBOMAwG
A1UdEwEB/wQCMAAwHQYDVR0OBBYEFDzd2pS972jV+Wm6k44fQ3IFNocKMB8GA1Ud
IwQYMBaAFJzWsrghiUplFF1xzjLfmRWDpR6iMAUGAytlcQNzAGNdSjoVJIBoXAr0
me/qRJISim1Yx43YB+5jSvzV8/HqG9xadozV8KX8enSN3Pb+cQ1KYG4MWwYcgGDA
4XNmvPJi6PbZu48pQIUNx3UrMlK/LjUOtJ4UwvoPwFgSqwiIOBJviVjWv/E91yMM
SCge6lwCAA==
-----END CERTIFICATE-----
subject=CN = localhost
issuer=CN = Root CA
---
No client certificate CA names sent
Peer signature type: Ed448
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 805 bytes and written 373 bytes
Verification: OK
Verified peername: localhost
---
New, TLSv1.3, Cipher is TLS_AES_256_GCM_SHA384
Server public key is 456 bit
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
    Session-ID: A004E613F9C64347F90015DAB0521219C3264BA21F11676CA35863AFC07F5EF4
    Session-ID-ctx:
    Resumption PSK: 0B6ED21B3E2836A051F27B3D9280A7B7DEED204AFD6CAAE494A4ADF102C941F15F70EF345A1EB4D2AB9D335AC4A245D1
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 7200 (seconds)
    TLS session ticket:
    0000 - 05 58 a7 2c 39 81 80 90-32 74 cc 35 29 7c d9 38   .X.,9...2t.5)|.8
    0010 - 97 9f 42 58 70 b8 2c c4-9a 48 6b 09 b2 a0 c8 e4   ..BXp.,..Hk.....
    0020 - 3d 61 f4 83 1a b1 82 32-cc 36 d8 1f a6 58 28 af   =a.....2.6...X(.
    0030 - c0 7b 08 c3 9c de 8a ad-0b 2d e1 10 8c a7 a3 ab   .{.......-......
    0040 - 26 19 96 96 7b 82 55 6b-a9 8e 51 e0 9a 58 8b e3   &...{.Uk..Q..X..
    0050 - f7 0f 59 d0 56 4d 62 b3-71 e9 46 35 9d 87 d1 34   ..Y.VMb.q.F5...4
    0060 - fb 5c 4a c7 63 e6 62 28-0b c3 1f 92 97 75 7a b6   .\J.c.b(.....uz.
    0070 - f9 8e f5 80 50 80 1b 39-f7 7e 67 06 d1 2b 8c 3a   ....P..9.~g..+.:
    0080 - c3 1f e5 a2 64 d3 50 97-ba 4b 06 fd 5d 26 2c b6   ....d.P..K..]&,.
    0090 - 3b 9c 40 95 32 d2 6f d3-62 90 f6 91 b1 e6 15 58   ;.@.2.o.b......X
    00a0 - 8d 9b 90 dd 34 b2 c0 44-42 57 3f 53 91 49 04 a9   ....4..DBW?S.I..
    00b0 - af 46 06 33 22 05 05 11-fa c3 2a 2d 6e a7 26 30   .F.3".....*-n.&0
    00c0 - 4e 11 b8 44 41 e8 41 d8-8a 7a 2a f7 e9 91 37 30   N..DA.A..z*...70

    Start Time: 1754850516
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
    Session-ID: 27FA31058FEB1B6DA06E721969165EE37D174B8EF58A3FDB9D683C02C9E0C5CE
    Session-ID-ctx:
    Resumption PSK: 253E28358B9821E03DA437370326CA47E344944ECDA9BAF292257CCB54093E0ADBD413BE33C3D6921AC245EAFB2F4A96
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 7200 (seconds)
    TLS session ticket:
    0000 - 05 58 a7 2c 39 81 80 90-32 74 cc 35 29 7c d9 38   .X.,9...2t.5)|.8
    0010 - 38 c5 89 d2 36 7a 3e 26-a1 34 2e 7b 4b 70 ff 9f   8...6z>&.4.{Kp..
    0020 - 9e 68 f2 ae 17 f3 85 7a-e1 37 73 fa b7 4a df 6a   .h.....z.7s..J.j
    0030 - c4 4d 65 34 3a 7e e6 33-81 01 dc 01 db 08 46 be   .Me4:~.3......F.
    0040 - cc 83 8c 2b 74 46 cf be-7e a6 11 1c be 7c 47 d8   ...+tF..~....|G.
    0050 - 39 93 f4 d2 da 27 f6 10-71 c1 14 81 11 4d e5 c8   9....'..q....M..
    0060 - 6a 8b f5 7a d3 28 c5 8b-9c 6a 8c be 2b ed 4f e0   j..z.(...j..+.O.
    0070 - bb 85 73 70 1a 01 aa c8-39 75 62 b5 c0 be c3 fd   ..sp....9ub.....
    0080 - 1b 3b 66 cb 0b 9e 71 7f-7c 22 22 31 2f 38 86 81   .;f...q.|""1/8..
    0090 - ec 2e f4 89 41 4d 0a 3c-40 08 0f ad ba 3e 61 f7   ....AM.<@....>a.
    00a0 - c1 e6 1e 8f c0 f8 f0 b6-34 3f ec c7 5f 66 98 d5   ........4?.._f..
    00b0 - 10 fb 47 b0 9e 81 d6 6d-c7 04 90 be ad b4 7b 66   ..G....m......{f
    00c0 - fa 0d dd 15 54 01 db 41-65 83 e3 e9 57 ca a5 75   ....T..Ae...W..u

    Start Time: 1754850516
    Timeout   : 7200 (sec)
    Verify return code: 0 (ok)
    Extended master secret: no
    Max Early Data: 0
---
read R BLOCK
```

### Server
```bash
-----BEGIN SSL SESSION PARAMETERS-----
MIGDAgEBAgIDBAQCEwIEIE+Y+igPXyi8Jz234aN8lIhkP0cAUmJzHopjFQsQCkDv
BDAlPig1i5gh4D2kNzcDJspH40SUTs2puvKSJXzLVAk+CtvUE74zw9aSGsJF6vsv
SpahBgIEaJjk1KIEAgIcIKQGBAQBAAAArgcCBQC1VMoZswMCAR0=
-----END SSL SESSION PARAMETERS-----
Shared ciphers:TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_128_GCM_SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA384:DHE-RSA-AES256-SHA256:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA256:DHE-RSA-AES128-SHA256:ECDHE-ECDSA-AES256-SHA:ECDHE-RSA-AES256-SHA:DHE-RSA-AES256-SHA:ECDHE-ECDSA-AES128-SHA:ECDHE-RSA-AES128-SHA:DHE-RSA-AES128-SHA:AES256-GCM-SHA384:AES128-GCM-SHA256:AES256-SHA256:AES128-SHA256:AES256-SHA:AES128-SHA
Signature Algorithms: ECDSA+SHA256:ECDSA+SHA384:ECDSA+SHA512:Ed25519:Ed448:RSA-PSS+SHA256:RSA-PSS+SHA384:RSA-PSS+SHA512:RSA-PSS+SHA256:RSA-PSS+SHA384:RSA-PSS+SHA512:RSA+SHA256:RSA+SHA384:RSA+SHA512:ECDSA+SHA224:RSA+SHA224:DSA+SHA224:DSA+SHA256:DSA+SHA384:DSA+SHA512
Shared Signature Algorithms: ECDSA+SHA256:ECDSA+SHA384:ECDSA+SHA512:Ed25519:Ed448:RSA-PSS+SHA256:RSA-PSS+SHA384:RSA-PSS+SHA512:RSA-PSS+SHA256:RSA-PSS+SHA384:RSA-PSS+SHA512:RSA+SHA256:RSA+SHA384:RSA+SHA512:ECDSA+SHA224:RSA+SHA224
Supported groups: x25519:secp256r1:x448:secp521r1:secp384r1:ffdhe2048:ffdhe3072:ffdhe4096:ffdhe6144:ffdhe8192
Shared groups: x25519:secp256r1:x448:secp521r1:secp384r1:ffdhe2048:ffdhe3072:ffdhe4096:ffdhe6144:ffdhe8192
CIPHER is TLS_AES_256_GCM_SHA384
Secure Renegotiation IS supported
```

## Result

### Client
```bash
asdf
hi
hello~~~~~~~~~~~~~~~~~~~~~~
dope
```

### Server
```bash
asdf
hi
hello~~~~~~~~~~~~~~~~~~~~~~
dope
```