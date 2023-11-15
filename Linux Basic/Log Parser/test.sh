#!/bin/bash

awk '"404" == $9 { print $1,$6,$7 }' apache_logs > not_found.txt
