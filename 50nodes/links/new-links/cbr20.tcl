#
# nodes: 50, max conn: 25, send rate: 0.25, seed: 2
#
#
# 4 connecting to 5 at time 107.69501429409489
#
set udp_(0) [new Agent/UDP]
$ns_ attach-agent $node_(4) $udp_(0)
set null_(0) [new Agent/Null]
$ns_ attach-agent $node_(5) $null_(0)
set cbr_(0) [new Application/Traffic/CBR]
$cbr_(0) set packetSize_ 512
$cbr_(0) set interval_ 0.25
$cbr_(0) set random_ 1
$cbr_(0) set maxpkts_ 10000
$cbr_(0) attach-agent $udp_(0)
$ns_ connect $udp_(0) $null_(0)
$ns_ at 100.0 "$cbr_(0) start"
#
# 4 connecting to 6 at time 112.66623783515126
#
set udp_(1) [new Agent/UDP]
$ns_ attach-agent $node_(4) $udp_(1)
set null_(1) [new Agent/Null]
$ns_ attach-agent $node_(6) $null_(1)
set cbr_(1) [new Application/Traffic/CBR]
$cbr_(1) set packetSize_ 512
$cbr_(1) set interval_ 0.25
$cbr_(1) set random_ 1
$cbr_(1) set maxpkts_ 10000
$cbr_(1) attach-agent $udp_(1)
$ns_ connect $udp_(1) $null_(1)
$ns_ at 124.5 "$cbr_(1) start"
#
# 5 connecting to 6 at time 84.456630639944521
#
set udp_(2) [new Agent/UDP]
$ns_ attach-agent $node_(5) $udp_(2)
set null_(2) [new Agent/Null]
$ns_ attach-agent $node_(6) $null_(2)
set cbr_(2) [new Application/Traffic/CBR]
$cbr_(2) set packetSize_ 512
$cbr_(2) set interval_ 0.25
$cbr_(2) set random_ 1
$cbr_(2) set maxpkts_ 10000
$cbr_(2) attach-agent $udp_(2)
$ns_ connect $udp_(2) $null_(2)
$ns_ at 65.0 "$cbr_(2) start"
#
# 7 connecting to 8 at time 121.07647335206924
#
set udp_(3) [new Agent/UDP]
$ns_ attach-agent $node_(7) $udp_(3)
set null_(3) [new Agent/Null]
$ns_ attach-agent $node_(8) $null_(3)
set cbr_(3) [new Application/Traffic/CBR]
$cbr_(3) set packetSize_ 512
$cbr_(3) set interval_ 0.25
$cbr_(3) set random_ 1
$cbr_(3) set maxpkts_ 10000
$cbr_(3) attach-agent $udp_(3)
$ns_ connect $udp_(3) $null_(3)
$ns_ at 121.0 "$cbr_(3) start"
#
# 12 connecting to 13 at time 152.51642512740401
#
set udp_(4) [new Agent/UDP]
$ns_ attach-agent $node_(12) $udp_(4)
set null_(4) [new Agent/Null]
$ns_ attach-agent $node_(13) $null_(4)
set cbr_(4) [new Application/Traffic/CBR]
$cbr_(4) set packetSize_ 512
$cbr_(4) set interval_ 0.25
$cbr_(4) set random_ 1
$cbr_(4) set maxpkts_ 10000
$cbr_(4) attach-agent $udp_(4)
$ns_ connect $udp_(4) $null_(4)
$ns_ at 152.0 "$cbr_(4) start"
#
# 15 connecting to 16 at time 125.54676921365167
#
set udp_(5) [new Agent/UDP]
$ns_ attach-agent $node_(15) $udp_(5)
set null_(5) [new Agent/Null]
$ns_ attach-agent $node_(16) $null_(5)
set cbr_(5) [new Application/Traffic/CBR]
$cbr_(5) set packetSize_ 512
$cbr_(5) set interval_ 0.25
$cbr_(5) set random_ 1
$cbr_(5) set maxpkts_ 10000
$cbr_(5) attach-agent $udp_(5)
$ns_ connect $udp_(5) $null_(5)
$ns_ at 125.0 "$cbr_(5) start"
#
# 16 connecting to 17 at time 147.12684344832172
#
set udp_(6) [new Agent/UDP]
$ns_ attach-agent $node_(16) $udp_(6)
set null_(6) [new Agent/Null]
$ns_ attach-agent $node_(23) $null_(6)
set cbr_(6) [new Application/Traffic/CBR]
$cbr_(6) set packetSize_ 512
$cbr_(6) set interval_ 0.25
$cbr_(6) set random_ 1
$cbr_(6) set maxpkts_ 10000
$cbr_(6) attach-agent $udp_(6)
$ns_ connect $udp_(6) $null_(6)
$ns_ at 149.0 "$cbr_(6) start"
#
# 18 connecting to 19 at time 69.230459699980202
#
set udp_(7) [new Agent/UDP]
$ns_ attach-agent $node_(18) $udp_(7)
set null_(7) [new Agent/Null]
$ns_ attach-agent $node_(19) $null_(7)
set cbr_(7) [new Application/Traffic/CBR]
$cbr_(7) set packetSize_ 512
$cbr_(7) set interval_ 0.25
$cbr_(7) set random_ 1
$cbr_(7) set maxpkts_ 10000
$cbr_(7) attach-agent $udp_(7)
$ns_ connect $udp_(7) $null_(7)
$ns_ at 15.0 "$cbr_(7) start"
#
# 18 connecting to 20 at time 130.34422114973151
#
set udp_(8) [new Agent/UDP]
$ns_ attach-agent $node_(18) $udp_(8)
set null_(8) [new Agent/Null]
$ns_ attach-agent $node_(20) $null_(8)
set cbr_(8) [new Application/Traffic/CBR]
$cbr_(8) set packetSize_ 512
$cbr_(8) set interval_ 0.25
$cbr_(8) set random_ 1
$cbr_(8) set maxpkts_ 10000
$cbr_(8) attach-agent $udp_(8)
$ns_ connect $udp_(8) $null_(8)
$ns_ at 130.0 "$cbr_(8) start"
#
# 19 connecting to 20 at time 78.176456409588667
#
set udp_(9) [new Agent/UDP]
$ns_ attach-agent $node_(19) $udp_(9)
set null_(9) [new Agent/Null]
$ns_ attach-agent $node_(20) $null_(9)
set cbr_(9) [new Application/Traffic/CBR]
$cbr_(9) set packetSize_ 512
$cbr_(9) set interval_ 0.25
$cbr_(9) set random_ 1
$cbr_(9) set maxpkts_ 10000
$cbr_(9) attach-agent $udp_(9)
$ns_ connect $udp_(9) $null_(9)
$ns_ at 78.0 "$cbr_(9) start"
#
# 21 connecting to 22 at time 63.845619579705236
#
set udp_(10) [new Agent/UDP]
$ns_ attach-agent $node_(21) $udp_(10)
set null_(10) [new Agent/Null]
$ns_ attach-agent $node_(22) $null_(10)
set cbr_(10) [new Application/Traffic/CBR]
$cbr_(10) set packetSize_ 512
$cbr_(10) set interval_ 0.25
$cbr_(10) set random_ 1
$cbr_(10) set maxpkts_ 10000
$cbr_(10) attach-agent $udp_(10)
$ns_ connect $udp_(10) $null_(10)
$ns_ at 64.0 "$cbr_(10) start"
#
# 22 connecting to 23 at time 145.779419907266
#
set udp_(11) [new Agent/UDP]
$ns_ attach-agent $node_(22) $udp_(11)
set null_(11) [new Agent/Null]
$ns_ attach-agent $node_(23) $null_(11)
set cbr_(11) [new Application/Traffic/CBR]
$cbr_(11) set packetSize_ 512
$cbr_(11) set interval_ 0.25
$cbr_(11) set random_ 1
$cbr_(11) set maxpkts_ 10000
$cbr_(11) attach-agent $udp_(11)
$ns_ connect $udp_(11) $null_(11)
$ns_ at 145.0 "$cbr_(11) start"
#
# 23 connecting to 24 at time 39.311449853382747
#
set udp_(12) [new Agent/UDP]
$ns_ attach-agent $node_(23) $udp_(12)
set null_(12) [new Agent/Null]
$ns_ attach-agent $node_(24) $null_(12)
set cbr_(12) [new Application/Traffic/CBR]
$cbr_(12) set packetSize_ 512
$cbr_(12) set interval_ 0.25
$cbr_(12) set random_ 1
$cbr_(12) set maxpkts_ 10000
$cbr_(12) attach-agent $udp_(12)
$ns_ connect $udp_(12) $null_(12)
$ns_ at 20.5 "$cbr_(12) start"
#
# 23 connecting to 25 at time 145.51471018489204
#
set udp_(13) [new Agent/UDP]
$ns_ attach-agent $node_(23) $udp_(13)
set null_(13) [new Agent/Null]
$ns_ attach-agent $node_(25) $null_(13)
set cbr_(13) [new Application/Traffic/CBR]
$cbr_(13) set packetSize_ 512
$cbr_(13) set interval_ 0.25
$cbr_(13) set random_ 1
$cbr_(13) set maxpkts_ 10000
$cbr_(13) attach-agent $udp_(13)
$ns_ connect $udp_(13) $null_(13)
$ns_ at 145.0 "$cbr_(13) start"
#
# 25 connecting to 26 at time 160.6544342826374
#
set udp_(14) [new Agent/UDP]
$ns_ attach-agent $node_(25) $udp_(14)
set null_(14) [new Agent/Null]
$ns_ attach-agent $node_(26) $null_(14)
set cbr_(14) [new Application/Traffic/CBR]
$cbr_(14) set packetSize_ 512
$cbr_(14) set interval_ 0.25
$cbr_(14) set random_ 1
$cbr_(14) set maxpkts_ 10000
$cbr_(14) attach-agent $udp_(14)
$ns_ connect $udp_(14) $null_(14)
$ns_ at 161.0 "$cbr_(14) start"
#
# 25 connecting to 27 at time 140.88521574665103
#
set udp_(15) [new Agent/UDP]
$ns_ attach-agent $node_(25) $udp_(15)
set null_(15) [new Agent/Null]
$ns_ attach-agent $node_(27) $null_(15)
set cbr_(15) [new Application/Traffic/CBR]
$cbr_(15) set packetSize_ 512
$cbr_(15) set interval_ 0.25
$cbr_(15) set random_ 1
$cbr_(15) set maxpkts_ 10000
$cbr_(15) attach-agent $udp_(15)
$ns_ connect $udp_(15) $null_(15)
$ns_ at 141.0 "$cbr_(15) start"
#
# 30 connecting to 31 at time 44.31630946896798
#
set udp_(16) [new Agent/UDP]
$ns_ attach-agent $node_(30) $udp_(16)
set null_(16) [new Agent/Null]
$ns_ attach-agent $node_(33) $null_(16)
set cbr_(16) [new Application/Traffic/CBR]
$cbr_(16) set packetSize_ 512
$cbr_(16) set interval_ 0.25
$cbr_(16) set random_ 1
$cbr_(16) set maxpkts_ 10000
$cbr_(16) attach-agent $udp_(16)
$ns_ connect $udp_(16) $null_(16)
$ns_ at 42.5 "$cbr_(16) start"
#
# 32 connecting to 33 at time 71.521412540004306
#
set udp_(17) [new Agent/UDP]
$ns_ attach-agent $node_(32) $udp_(17)
set null_(17) [new Agent/Null]
$ns_ attach-agent $node_(33) $null_(17)
set cbr_(17) [new Application/Traffic/CBR]
$cbr_(17) set packetSize_ 512
$cbr_(17) set interval_ 0.25
$cbr_(17) set random_ 1
$cbr_(17) set maxpkts_ 10000
$cbr_(17) attach-agent $udp_(17)
$ns_ connect $udp_(17) $null_(17)
$ns_ at 71.0 "$cbr_(17) start"
#
# 34 connecting to 35 at time 94.255743992633995
#
set udp_(18) [new Agent/UDP]
$ns_ attach-agent $node_(34) $udp_(18)
set null_(18) [new Agent/Null]
$ns_ attach-agent $node_(35) $null_(18)
set cbr_(18) [new Application/Traffic/CBR]
$cbr_(18) set packetSize_ 512
$cbr_(18) set interval_ 0.25
$cbr_(18) set random_ 1
$cbr_(18) set maxpkts_ 10000
$cbr_(18) attach-agent $udp_(18)
$ns_ connect $udp_(18) $null_(18)
$ns_ at 62.5 "$cbr_(18) start"
#
# 34 connecting to 36 at time 19.742282451941762
#
set udp_(19) [new Agent/UDP]
$ns_ attach-agent $node_(34) $udp_(19)
set null_(19) [new Agent/Null]
$ns_ attach-agent $node_(36) $null_(19)
set cbr_(19) [new Application/Traffic/CBR]
$cbr_(19) set packetSize_ 512
$cbr_(19) set interval_ 0.25
$cbr_(19) set random_ 1
$cbr_(19) set maxpkts_ 10000
$cbr_(19) attach-agent $udp_(19)
$ns_ connect $udp_(19) $null_(19)
$ns_ at 72.0 "$cbr_(19) start"
