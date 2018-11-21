BEGIN {
	FS = ","
	i = 1
	if (invert == "y") {
	A = "B"
	B = "A"
	}
	else {
	A = "A"
	B = "B"
	}
}

FNR == 2 {
	prot = $1
}

NR>1 {
	if (prot == $1) {
	chA = A
	}
	else {
	chA = B
	}
	if (prot == $2) {
	chB = A
	}
	else {
	chB = B
	}
	if ($3 == "0") {
	pos1 = 1
	}
	else {
	pos1 = $3
	}
	if ($4 == "0") {
        pos2 = 1
        }
        else {
        pos2 = $4
        }

	print "distance","crosslink_"i", "chA"//"pos1"/CA,",chB"//"pos2"/CA"
	i += 1
}
