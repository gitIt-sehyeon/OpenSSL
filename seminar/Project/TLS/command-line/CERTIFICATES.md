# Preparing certificates for a TLS server connection

## Generate CA key pair and CA cert
```bash
$ openssl req \
  -newkey ED448 \
  -x509 \
  -subj "/CN=Root CA" \
  -addext "basicConstraints=critical,CA:TRUE" \
  -days 3650 \
  -noenc \
  -keyout ca_keypair.pem \
  -out ca_cert.pem
-----
```

---

## Generate Server key pair and Server CSR
```bash
$ openssl req \
  -newkey ED448 \
  -subj "/CN=localhost" \
  -addext "basicConstraints=critical,CA:FALSE" \
  -noenc \
  -keyout server_keypair.pem \
  -out server_csr.pem
-----
```

---

## CA signed Server cert
```bash
$ openssl x509 \
  -req \
  -in server_csr.pem \
  -copy_extensions copyall \
  -CA ca_cert.pem \
  -CAkey ca_keypair.pem \
  -days 3650 \
  -out server_cert.pem
Certificate request self-signature ok
subject=CN = localhost
```