# ===================================================================
# AWK Script for calculating detection rate: 
# ===================================================================

BEGIN {
	TP = 0;
	FN = 0;
	tes = " ";
}

{
	event = $1;
	drop_label = $5;
	rp_src = $14;
	
	if ((event == "D") && (drop_label == "OUT") && (rp_src == "[3:255")) {
		TP++;
	}
	
	if ((event == "D") && (drop_label == "OUT") && (rp_src == "[9:255")) {
		TP++;
	}
	 
	if ((event == "D") && (drop_label == "OUT") && (rp_src != "[3:255")) {
		FN++;
	}
	
	if ((event == "D") && (drop_label == "OUT") && (rp_src != "[9:255")) {
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

# ===================================================================
# AWK Script for calculating detection rate: 
# ===================================================================

BEGIN {
	TP = 0;
	FN = 0;
	tes = " ";
}

{
	event = $1;
	drop_label = $5;
	rp_src = $14;
	
	if ((event == "D") && (drop_label == "OUT") && ((rp_src == "[3:255") || rp_src == "[9:255" || rp_src == "[24:255")) {
		TP++;
	}
	 
	if ((event == "D") && (drop_label == "OUT") && (rp_src != "[3:255") && (rp_src != "[9:255") && (rp_src != "[24:255")) {
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
