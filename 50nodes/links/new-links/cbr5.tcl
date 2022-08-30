#
# nodes: 50, max conn: 5, send rate: 0.25, seed: 2
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
$ns_ at 10.0 "$cbr_(0) start"
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

#
#Total sources/connections: 4/5
#
