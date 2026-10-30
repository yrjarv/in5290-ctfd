# Custom CTFd setup

## Infrastructure

You need an NREC instance, Ubuntu 26.04 LTS has been tested to work. Preferably
`c1.medium` (or better) to get enough resources. Use dualstack networking to get
an IPv4 address.

You need a domain/subdomain, set up an A record to the IP of the NREC instance.

## Setup

```shell
git clone https://github.com/yrjarv/in5290-ctfd --recurse-submodules
```

Run `setup/setup_server.sh`. Then log out and in. Then run
`setup/setup_ctfd.sh`.

Now it should be hosted on `https://your_domain` (port 443).
