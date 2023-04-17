#!/bin/sh
pd=$1
tidb=$2
tikv=$3
tiflash=$4

echo tiup playground v7.0.0 --pd ${pd} --db ${tidb} --kv ${tikv} --tiflash ${tiflash}

tiup playground v7.0.0 --pd ${pd} --db ${tidb} --kv ${tikv} --tiflash ${tiflash}
