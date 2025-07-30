# Result

```
$ seq 20000 >somefile.txt

$ ./encrypt.exe somefile.txt somefile.txt.encrypted 74c8a19fee9e0710683afe526462ce8a960ca1356e113bf3a08736a68a48eca0
Encryption succeeded

$ ./decrypt.exe somefile.
txt.encrypted somefile.txt.decrypted 74c8a19fee9e0710683afe526462ce8a960ca1356e113bf3a08736a68a48eca0
Decryption succeeded

$ cksum somefile.txt*
3231941463 108894 somefile.txt
3231941463 108894 somefile.txt.decrypted
441329483 108922 somefile.txt.encrypted
```