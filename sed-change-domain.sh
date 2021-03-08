#!/bin/bash

old="http://131-tm.cliffstudio.xyz"
new="http://tm.backup"
#sed -i 's/http:\/\/131-tm\.cliffstudio\.xyz/http:\/\/tm\.backup/g' srnewtm08032021.sql
sed "s|${old}|${new}|g" $1
