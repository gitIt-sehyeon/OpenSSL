echo "[+] Generating RSA private key..."
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048

echo "[+] Extracting public key from private key..."
openssl rsa -pubout -in private_key.pem -out public_key.pem

echo "[o] RSA key pair generated."