#!/bin/bash

set -e
if [[ -z $1 ]]; then
    echo "Please specify an output file:"
    echo "$0 output-file.sql"
    exit 1
fi
OUTPUT=$1

echo "Enter the MySQL password:"
read -s PASS

MANIFEST=$(mysql -B -N -uroot -p${PASS} -e "SELECT CONCAT('\'', user,'\'@\'', host, '\'') FROM user WHERE user != 'debian-sys-maint' AND user != 'root' AND user != ''" mysql)

while read LINE; do
    mysql -B -N -uroot -p"${PASS}" -e "SHOW GRANTS FOR ${LINE}"
done <<< "$MANIFEST" > "$OUTPUT"

sed -e 's/$/;/' -i "$OUTPUT"
