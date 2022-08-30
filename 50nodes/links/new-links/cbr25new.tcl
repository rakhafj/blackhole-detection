#
# nodes: 50, max conn: 25, send rate: 0.25, seed: 0.5
#
#
# 0 connecting to 1 at time 142.35286017058084
#
set udp_(0) [new Agent/UDP]
$ns_ attach-agent $node_(0) $udp_(0)
set null_(0) [new Agent/Null]
$ns_ attach-agent $node_(1) $null_(0)
set cbr_(0) [new Application/Traffic/CBR]
$cbr_(0) set packetSize_ 512
$cbr_(0) set interval_ 0.25
$cbr_(0) set random_ 1
$cbr_(0) set maxpkts_ 10000
$cbr_(0) attach-agent $udp_(0)
$ns_ connect $udp_(0) $null_(0)
$ns_ at 142.35286017058084 "$cbr_(0) start"
#
# 1 connecting to 2 at time 74.612247298756728
#
set udp_(1) [new Agent/UDP]
$ns_ attach-agent $node_(1) $udp_(1)
set null_(1) [new Agent/Null]
$ns_ attach-agent $node_(2) $null_(1)
set cbr_(1) [new Application/Traffic/CBR]
$cbr_(1) set packetSize_ 512
$cbr_(1) set interval_ 0.25
$cbr_(1) set random_ 1
$cbr_(1) set maxpkts_ 10000
$cbr_(1) attach-agent $udp_(1)
$ns_ connect $udp_(1) $null_(1)
$ns_ at 74.612247298756728 "$cbr_(1) start"
#
# 1 connecting to 3 at time 100.9429555111299
#
set udp_(2) [new Agent/UDP]
$ns_ attach-agent $node_(1) $udp_(2)
set null_(2) [new Agent/Null]
$ns_ attach-agent $node_(3) $null_(2)
set cbr_(2) [new Application/Traffic/CBR]
$cbr_(2) set packetSize_ 512
$cbr_(2) set interval_ 0.25
$cbr_(2) set random_ 1
$cbr_(2) set maxpkts_ 10000
$cbr_(2) attach-agent $udp_(2)
$ns_ connect $udp_(2) $null_(2)
$ns_ at 100.9429555111299 "$cbr_(2) start"
#
# 3 connecting to 4 at time 77.794642447398346
#
set udp_(3) [new Agent/UDP]
$ns_ attach-agent $node_(3) $udp_(3)
set null_(3) [new Agent/Null]
$ns_ attach-agent $node_(4) $null_(3)
set cbr_(3) [new Application/Traffic/CBR]
$cbr_(3) set packetSize_ 512
$cbr_(3) set interval_ 0.25
$cbr_(3) set random_ 1
$cbr_(3) set maxpkts_ 10000
$cbr_(3) attach-agent $udp_(3)
$ns_ connect $udp_(3) $null_(3)
$ns_ at 77.794642447398346 "$cbr_(3) start"
#
# 3 connecting to 5 at time 39.791376925907741
#
set udp_(4) [new Agent/UDP]
$ns_ attach-agent $node_(3) $udp_(4)
set null_(4) [new Agent/Null]
$ns_ attach-agent $node_(5) $null_(4)
set cbr_(4) [new Application/Traffic/CBR]
$cbr_(4) set packetSize_ 512
$cbr_(4) set interval_ 0.25
$cbr_(4) set random_ 1
$cbr_(4) set maxpkts_ 10000
$cbr_(4) attach-agent $udp_(4)
$ns_ connect $udp_(4) $null_(4)
$ns_ at 39.791376925907741 "$cbr_(4) start"
#
# 6 connecting to 7 at time 53.079684289675065
#
set udp_(5) [new Agent/UDP]
$ns_ attach-agent $node_(6) $udp_(5)
set null_(5) [new Agent/Null]
$ns_ attach-agent $node_(7) $null_(5)
set cbr_(5) [new Application/Traffic/CBR]
$cbr_(5) set packetSize_ 512
$cbr_(5) set interval_ 0.25
$cbr_(5) set random_ 1
$cbr_(5) set maxpkts_ 10000
$cbr_(5) attach-agent $udp_(5)
$ns_ connect $udp_(5) $null_(5)
$ns_ at 53.079684289675065 "$cbr_(5) start"
#
# 7 connecting to 8 at time 23.266038821668381
#
set udp_(6) [new Agent/UDP]
$ns_ attach-agent $node_(7) $udp_(6)
set null_(6) [new Agent/Null]
$ns_ attach-agent $node_(8) $null_(6)
set cbr_(6) [new Application/Traffic/CBR]
$cbr_(6) set packetSize_ 512
$cbr_(6) set interval_ 0.25
$cbr_(6) set random_ 1
$cbr_(6) set maxpkts_ 10000
$cbr_(6) attach-agent $udp_(6)
$ns_ connect $udp_(6) $null_(6)
$ns_ at 23.266038821668381 "$cbr_(6) start"
#
# 10 connecting to 11 at time 39.059209385448696
#
set udp_(7) [new Agent/UDP]
$ns_ attach-agent $node_(10) $udp_(7)
set null_(7) [new Agent/Null]
$ns_ attach-agent $node_(11) $null_(7)
set cbr_(7) [new Application/Traffic/CBR]
$cbr_(7) set packetSize_ 512
$cbr_(7) set interval_ 0.25
$cbr_(7) set random_ 1
$cbr_(7) set maxpkts_ 10000
$cbr_(7) attach-agent $udp_(7)
$ns_ connect $udp_(7) $null_(7)
$ns_ at 39.059209385448696 "$cbr_(7) start"
#
# 11 connecting to 12 at time 160.8131139356704
#
set udp_(8) [new Agent/UDP]
$ns_ attach-agent $node_(11) $udp_(8)
set null_(8) [new Agent/Null]
$ns_ attach-agent $node_(12) $null_(8)
set cbr_(8) [new Application/Traffic/CBR]
$cbr_(8) set packetSize_ 512
$cbr_(8) set interval_ 0.25
$cbr_(8) set random_ 1
$cbr_(8) set maxpkts_ 10000
$cbr_(8) attach-agent $udp_(8)
$ns_ connect $udp_(8) $null_(8)
$ns_ at 160.8131139356704 "$cbr_(8) start"
#
# 12 connecting to 13 at time 54.883285870255577
#
set udp_(9) [new Agent/UDP]
$ns_ attach-agent $node_(12) $udp_(9)
set null_(9) [new Agent/Null]
$ns_ attach-agent $node_(13) $null_(9)
set cbr_(9) [new Application/Traffic/CBR]
$cbr_(9) set packetSize_ 512
$cbr_(9) set interval_ 0.25
$cbr_(9) set random_ 1
$cbr_(9) set maxpkts_ 10000
$cbr_(9) attach-agent $udp_(9)
$ns_ connect $udp_(9) $null_(9)
$ns_ at 54.883285870255577 "$cbr_(9) start"
#
# 13 connecting to 14 at time 61.326470683015174
#
set udp_(10) [new Agent/UDP]
$ns_ attach-agent $node_(13) $udp_(10)
set null_(10) [new Agent/Null]
$ns_ attach-agent $node_(14) $null_(10)
set cbr_(10) [new Application/Traffic/CBR]
$cbr_(10) set packetSize_ 512
$cbr_(10) set interval_ 0.25
$cbr_(10) set random_ 1
$cbr_(10) set maxpkts_ 10000
$cbr_(10) attach-agent $udp_(10)
$ns_ connect $udp_(10) $null_(10)
$ns_ at 61.326470683015174 "$cbr_(10) start"
#
# 13 connecting to 15 at time 120.8149343360285
#
set udp_(11) [new Agent/UDP]
$ns_ attach-agent $node_(13) $udp_(11)
set null_(11) [new Agent/Null]
$ns_ attach-agent $node_(15) $null_(11)
set cbr_(11) [new Application/Traffic/CBR]
$cbr_(11) set packetSize_ 512
$cbr_(11) set interval_ 0.25
$cbr_(11) set random_ 1
$cbr_(11) set maxpkts_ 10000
$cbr_(11) attach-agent $udp_(11)
$ns_ connect $udp_(11) $null_(11)
$ns_ at 120.8149343360285 "$cbr_(11) start"
#
# 17 connecting to 18 at time 84.782238996020638
#
set udp_(12) [new Agent/UDP]
$ns_ attach-agent $node_(17) $udp_(12)
set null_(12) [new Agent/Null]
$ns_ attach-agent $node_(18) $null_(12)
set cbr_(12) [new Application/Traffic/CBR]
$cbr_(12) set packetSize_ 512
$cbr_(12) set interval_ 0.25
$cbr_(12) set random_ 1
$cbr_(12) set maxpkts_ 10000
$cbr_(12) attach-agent $udp_(12)
$ns_ connect $udp_(12) $null_(12)
$ns_ at 84.782238996020638 "$cbr_(12) start"
#
# 17 connecting to 19 at time 127.29517889548801
#
set udp_(13) [new Agent/UDP]
$ns_ attach-agent $node_(17) $udp_(13)
set null_(13) [new Agent/Null]
$ns_ attach-agent $node_(19) $null_(13)
set cbr_(13) [new Application/Traffic/CBR]
$cbr_(13) set packetSize_ 512
$cbr_(13) set interval_ 0.25
$cbr_(13) set random_ 1
$cbr_(13) set maxpkts_ 10000
$cbr_(13) attach-agent $udp_(13)
$ns_ connect $udp_(13) $null_(13)
$ns_ at 127.29517889548801 "$cbr_(13) start"
#
# 18 connecting to 19 at time 36.40487857926864
#
set udp_(14) [new Agent/UDP]
$ns_ attach-agent $node_(18) $udp_(14)
set null_(14) [new Agent/Null]
$ns_ attach-agent $node_(19) $null_(14)
set cbr_(14) [new Application/Traffic/CBR]
$cbr_(14) set packetSize_ 512
$cbr_(14) set interval_ 0.25
$cbr_(14) set random_ 1
$cbr_(14) set maxpkts_ 10000
$cbr_(14) attach-agent $udp_(14)
$ns_ connect $udp_(14) $null_(14)
$ns_ at 36.40487857926864 "$cbr_(14) start"
#
# 18 connecting to 20 at time 105.33794424745159
#
set udp_(15) [new Agent/UDP]
$ns_ attach-agent $node_(18) $udp_(15)
set null_(15) [new Agent/Null]
$ns_ attach-agent $node_(20) $null_(15)
set cbr_(15) [new Application/Traffic/CBR]
$cbr_(15) set packetSize_ 512
$cbr_(15) set interval_ 0.25
$cbr_(15) set random_ 1
$cbr_(15) set maxpkts_ 10000
$cbr_(15) attach-agent $udp_(15)
$ns_ connect $udp_(15) $null_(15)
$ns_ at 105.33794424745159 "$cbr_(15) start"
#
# 22 connecting to 23 at time 57.966886040739197
#
set udp_(16) [new Agent/UDP]
$ns_ attach-agent $node_(22) $udp_(16)
set null_(16) [new Agent/Null]
$ns_ attach-agent $node_(23) $null_(16)
set cbr_(16) [new Application/Traffic/CBR]
$cbr_(16) set packetSize_ 512
$cbr_(16) set interval_ 0.25
$cbr_(16) set random_ 1
$cbr_(16) set maxpkts_ 10000
$cbr_(16) attach-agent $udp_(16)
$ns_ connect $udp_(16) $null_(16)
$ns_ at 57.966886040739197 "$cbr_(16) start"
#
# 25 connecting to 26 at time 6.578359765269961
#
set udp_(17) [new Agent/UDP]
$ns_ attach-agent $node_(25) $udp_(17)
set null_(17) [new Agent/Null]
$ns_ attach-agent $node_(26) $null_(17)
set cbr_(17) [new Application/Traffic/CBR]
$cbr_(17) set packetSize_ 512
$cbr_(17) set interval_ 0.25
$cbr_(17) set random_ 1
$cbr_(17) set maxpkts_ 10000
$cbr_(17) attach-agent $udp_(17)
$ns_ connect $udp_(17) $null_(17)
$ns_ at 6.578359765269961 "$cbr_(17) start"
#
# 26 connecting to 27 at time 137.19201392363385
#
set udp_(18) [new Agent/UDP]
$ns_ attach-agent $node_(26) $udp_(18)
set null_(18) [new Agent/Null]
$ns_ attach-agent $node_(27) $null_(18)
set cbr_(18) [new Application/Traffic/CBR]
$cbr_(18) set packetSize_ 512
$cbr_(18) set interval_ 0.25
$cbr_(18) set random_ 1
$cbr_(18) set maxpkts_ 10000
$cbr_(18) attach-agent $udp_(18)
$ns_ connect $udp_(18) $null_(18)
$ns_ at 137.19201392363385 "$cbr_(18) start"
#
# 26 connecting to 28 at time 77.336058466386078
#
set udp_(19) [new Agent/UDP]
$ns_ attach-agent $node_(26) $udp_(19)
set null_(19) [new Agent/Null]
$ns_ attach-agent $node_(28) $null_(19)
set cbr_(19) [new Application/Traffic/CBR]
$cbr_(19) set packetSize_ 512
$cbr_(19) set interval_ 0.25
$cbr_(19) set random_ 1
$cbr_(19) set maxpkts_ 10000
$cbr_(19) attach-agent $udp_(19)
$ns_ connect $udp_(19) $null_(19)
$ns_ at 77.336058466386078 "$cbr_(19) start"
#
# 27 connecting to 28 at time 179.06400737309085
#
set udp_(20) [new Agent/UDP]
$ns_ attach-agent $node_(27) $udp_(20)
set null_(20) [new Agent/Null]
$ns_ attach-agent $node_(28) $null_(20)
set cbr_(20) [new Application/Traffic/CBR]
$cbr_(20) set packetSize_ 512
$cbr_(20) set interval_ 0.25
$cbr_(20) set random_ 1
$cbr_(20) set maxpkts_ 10000
$cbr_(20) attach-agent $udp_(20)
$ns_ connect $udp_(20) $null_(20)
$ns_ at 179.06400737309085 "$cbr_(20) start"
#
# 27 connecting to 29 at time 76.336241753928476
#
set udp_(21) [new Agent/UDP]
$ns_ attach-agent $node_(27) $udp_(21)
set null_(21) [new Agent/Null]
$ns_ attach-agent $node_(29) $null_(21)
set cbr_(21) [new Application/Traffic/CBR]
$cbr_(21) set packetSize_ 512
$cbr_(21) set interval_ 0.25
$cbr_(21) set random_ 1
$cbr_(21) set maxpkts_ 10000
$cbr_(21) attach-agent $udp_(21)
$ns_ connect $udp_(21) $null_(21)
$ns_ at 76.336241753928476 "$cbr_(21) start"
#
# 28 connecting to 29 at time 50.32900526669296
#
set udp_(22) [new Agent/UDP]
$ns_ attach-agent $node_(28) $udp_(22)
set null_(22) [new Agent/Null]
$ns_ attach-agent $node_(29) $null_(22)
set cbr_(22) [new Application/Traffic/CBR]
$cbr_(22) set packetSize_ 512
$cbr_(22) set interval_ 0.25
$cbr_(22) set random_ 1
$cbr_(22) set maxpkts_ 10000
$cbr_(22) attach-agent $udp_(22)
$ns_ connect $udp_(22) $null_(22)
$ns_ at 50.32900526669296 "$cbr_(22) start"
#
# 30 connecting to 31 at time 43.347169432485089
#
set udp_(23) [new Agent/UDP]
$ns_ attach-agent $node_(30) $udp_(23)
set null_(23) [new Agent/Null]
$ns_ attach-agent $node_(31) $null_(23)
set cbr_(23) [new Application/Traffic/CBR]
$cbr_(23) set packetSize_ 512
$cbr_(23) set interval_ 0.25
$cbr_(23) set random_ 1
$cbr_(23) set maxpkts_ 10000
$cbr_(23) attach-agent $udp_(23)
$ns_ connect $udp_(23) $null_(23)
$ns_ at 43.347169432485089 "$cbr_(23) start"
#
# 32 connecting to 33 at time 49.111553444113369
#
set udp_(24) [new Agent/UDP]
$ns_ attach-agent $node_(32) $udp_(24)
set null_(24) [new Agent/Null]
$ns_ attach-agent $node_(33) $null_(24)
set cbr_(24) [new Application/Traffic/CBR]
$cbr_(24) set packetSize_ 512
$cbr_(24) set interval_ 0.25
$cbr_(24) set random_ 1
$cbr_(24) set maxpkts_ 10000
$cbr_(24) attach-agent $udp_(24)
$ns_ connect $udp_(24) $null_(24)
$ns_ at 49.111553444113369 "$cbr_(24) start"
#
#Total sources/connections: 18/25
#
