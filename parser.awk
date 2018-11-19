#!/bin/awk
BEGIN {
	FS=","
	i = 1
}

/^BSA/ {
	print "distance","crosslink"i", "$3"/CA,",$4"/CA"
	i += 1
}
