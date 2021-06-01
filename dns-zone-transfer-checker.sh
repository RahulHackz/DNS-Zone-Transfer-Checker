#!/bin/bash

function dns-zone-transfer-checker {
    domain=$1
    for nameserver in `dig $domain ns +short`; do host -l $domain $nameserver; done
}

if [ -z $1 ]; then
    echo "[*] DNS Zone Transfer Checker"
    echo "[*] Usage: $0 <domain name>"
    exit 0
fi

dns-zone-transfer-checker $1
