# Custom CTFd setup

![CTFd MySQL CI](https://github.com/CTFd/CTFd/workflows/CTFd%20MySQL%20CI/badge.svg?branch=master)
![Linting](https://github.com/CTFd/CTFd/workflows/Linting/badge.svg?branch=master)
[![Documentation Status](https://api.netlify.com/api/v1/badges/6d10883a-77bb-45c1-a003-22ce1284190e/deploy-status)](https://docs.ctfd.io)
>>>>>>> upstream/master


## Setup

You need an NREC instance, Ubuntu 26.04 LTS has been tested to work. Preferably
`c1.medium` (or better) to get enough resources. Use dualstack networking to get
an IPv4 address.

You need a domain/subdomain, set up an A record to the IP of the NREC instance.

Run `setup/setup_server.sh`. Then log out and in. Then run
`setup/setup_ctfd.sh`.

Now it should be hosted on `https://your_domain` (port 443).
