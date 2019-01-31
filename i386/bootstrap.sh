#!/bin/sh
mkdir -p /root/.etc/ssh &&
    echo 'anoncvs.mirbsd.org,62.138.145.52 ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDr7I94Dif+oc8Ubhd2tZ1yFwNDshNq28z91+Pg3YEzhCOU6homoi0015ny2TslBHLTjkN6SVkpcVklJuY4gvbv+VXexYL/3qk+cXusSaABOxLBq4Ff4gQhw2NpnpbKGzbnI+C5L1n8E3WMk2yeTZRpqlLTI67Wsox0cIgU1JYX3x/fYmtRMZ2QYsnCDN8A1ozbTqIdUYPFiSUv69DmpvcVa1ws9fK+lQtppRSLBrekF1ld017nTwFwDaz14z5K4v4wm1746xrsc86PF+7bXBGSIZhZptEFGdduNloXv5ZSPgbS7N7FWRNdBUVqehtSYEsxy0nMNvqZpcneHg4Hi29wDJwsMIiOUFJAJq0tR3xPz39vMoH8tUk+O3mmiqMm08XXoUCbZtB8u3ehkgT6uCWgDFwOonX88IXY/9Z1o2LZfqxqZRUZ7BkJiQoCqWBuScOGAiyp/OMHyHZ/HW5a4G00PWfIB7RIv/oMT5/UgklRM741cuhRurwt9nwyu8nv9UZxAwN9UT78g0ZpfMqS5BamP2F9j8dGdWKvJLOQFv7VW4LilR3qaNlZwaVjAQ3HKLNPka5quSj4sqpbvJYFlsg6427JQQ4p+78NZsnw0P6x6ns3UvN7hpL7B6+boQWPfLamqYAsS0AcysSevtUb4rOGRDF9oBwvYTm0ImoNL/x1zQ==' >>/root/.etc/ssh/known_hosts &&
    chown root: /root/.etc/ssh/known_hosts &&
    chown 0644 /root/.etc/ssh/known_hosts &&
    chown root: /root/.etc/ssh &&
    chown 0700 /root/.etc/ssh &&
    mkdir -p /usr/ports &&
    chown 2999 /usr/ports &&
    cd /usr &&
    cvs -d _anoncvs@anoncvs.mirbsd.org:/cvs co -d ports ports
