# RSA Key Generation Example

This shows how to generate an RSA key pair using OpenSSL.

## Commands

```bash
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048
openssl rsa -pubout -in private_key.pem -out public_key.pem

![RSA key Generation](../../images/rsa_generate.png)
![Private Key](../../images/rsa_private_key.png)
![Public key](../../images/rsa_public_key.png)