#!/bin/sh
version=$1
pd=$2
tidb=$3
tikv=$4
tiflash=$5

tiup playground v${version} --pd ${pd} --db ${tidb} --kv ${tikv} --tiflash ${tiflash} --host 0.0.0.0
