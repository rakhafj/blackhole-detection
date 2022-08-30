# ===================================================================
# AWK Script for calculating detection rate: 
# ===================================================================

BEGIN {
	TP = 0;
	FN = 0;

	blackholes["[3:255"] = "[3:255";
	#blackholes["[9:255"] = "[9:255";
	#blackholes["[23:255"] = "[23:255";
	#blackholes["[24:255"] = "[24:255";
	#blackholes["[33:255"] = "[33:255";
}

{
	event = $1;
	drop_label = $5;
	rp_src = $14;

	if ((event == "D") && (drop_label == "OUT") && (rp_src in blackholes)) {
		TP++;
	}
	 
	if ((event == "D") && (drop_label == "OUT") && !(rp_src in blackholes)) {
		FN++;
	}
}

END {
	DR = TP/(TP+FN) * 100;
	
	printf "========================= \n"
	printf "Detection Rate \n"
	printf "========================= \n"
	printf "True Positive \t= %d \n", TP;
	printf "False Negative \t= %d \n", FN;
	#printf "tes \t= %d \n", tes;
	printf "Detection Rate \t= %.4f \n", DR;
}
