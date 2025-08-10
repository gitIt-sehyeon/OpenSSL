# Running the tls-client program

```bash
> tls-client example.org 443
*** Sending to the server:
GET / HTTP/1.0
Host: example.org
Connection: close
User-Agent: Example TLS client

*** Sending to the server finished
*** Receiving from the server:
HTTP/1.0 200 OK
Accept-Ranges: bytes
Content-Type: text/html
ETag: "84238dfc8092e5d9c0dac8ef93371a07:1736799080.121134"
Last-Modified: Mon, 13 Jan 2025 20:11:20 GMT
Content-Length: 1256
Cache-Control: max-age=2384
Date: Sun, 10 Aug 2025 19:31:08 GMT
Alt-Svc: h3=":443"; ma=93600,h3-29=":443"; ma=93600
Connection: close

*** Receiving from the server finished
TLS communication succeeded
```

---

# Running the tls-server program

```bash
>tls-server 4433 server_keypair.pem server_cert.pem

*** Listening on port 4433
```

# Connect to server

```bash
>tls-client localhost 4433 ca_cert.pem
*** Sending to the server:
GET / HTTP/1.0
Host: localhost
Connection: close
User-Agent: Example TLS client

*** Sending to the server finished
*** Receiving from the server:
HTTP/1.0 200 OK
Content-type: text/plain
Connection: close
Server: Example TLS server

Hello from the TLS server!
*** Receiving from the server finished
TLS communication succeeded
```

# Server

```bash
*** Receiving from the client:
GET / HTTP/1.0
Host: localhost
Connection: close
User-Agent: Example TLS client

*** Receiving from the client finished
*** Sending to the client:
HTTP/1.0 200 OK
Content-type: text/plain
Connection: close
Server: Example TLS server

Hello from the TLS server!
*** Sending to the client finished

*** Listening on port 4433
```