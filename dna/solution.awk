BEGIN {
	FS = ""
	four = split("ACGT", nucleotides, "")
}

{
	for (i = 1; i <= NF; i++) {
		counts[$i]++
	}
	printf counts[nucleotides[1]]
	for (i = 2; i <= four; i++) {
		printf " " counts[nucleotides[i]]
	}
}

