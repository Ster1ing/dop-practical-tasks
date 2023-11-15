#!/bin/bash

unset arr
declare -A arr
total=0

while read -r ipaddr size; do
  [ "-" == $size ] && size=0
  ((arr[\"$ipaddr\"] += size))
  (( total += size ))
done < <( grep ' "GET ' | cut -d' ' -f1,10)

echo "There are ${#arr[@]} unique ips"
echo "Total downloaded: $total ($(numfmt --to=iec-i --suffix=B --format="%.1f"  $total))"

for ipaddr in "${!arr[@]}"; do
  printf "%-15s %9s\n" "$ipaddr" "${arr["$ipaddr"]}"
done | sort -n -k2,2 -r -k1,1
