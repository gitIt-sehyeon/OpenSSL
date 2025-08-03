# Create message digest on the command line

### Let's calculate the SHA3-256 digest

```bash
$ seq 20000 >somefile.txt

$ openssl dgst -list
Supported digests:
-blake2b512                -blake2s256                -md4
-md5                       -md5-sha1                  -ripemd
-ripemd160                 -rmd160                    -sha1
-sha224                    -sha256                    -sha3-224
-sha3-256                  -sha3-384                  -sha3-512
-sha384                    -sha512                    -sha512-224
-sha512-256                -shake128                  -shake256
-sm3                       -ssl3-md5                  -ssl3-sha1
-whirlpool

$ openssl dgst -sha3-256 somefile.txt
SHA3-256(somefile.txt)= 658656e129914052546af527ba8cf573ab27fb47551a0682ffcf00eeaf56d32b
```
