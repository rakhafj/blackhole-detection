# ===================================================================
# AWK Script for calculating false alarm rate: 
# ===================================================================

BEGIN {
	FP = 0;
	TN = 0;
}

{
	event = $1;
	drop_label = $5;
	pkt_type = $7;
	
	if (event == "D" && drop_label == "LOOP" && pkt_type == "cbr") {
		FP++;
	} 
	if (drop_label != "LOOP") {
		TN++;
	}
}

END {
	FAR = FP/(TN+FP) * 100;
	
	printf "========================= \n"
	printf "False Alarm Rate \n"
	printf "========================= \n"
	printf "False Positive \t= %d \n", FP;
	printf "True Negative \t= %d \n", TN;
	printf "Fale Alarm Rate \t= %.4f \n", FAR;
}

