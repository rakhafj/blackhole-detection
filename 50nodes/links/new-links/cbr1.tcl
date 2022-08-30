#
# nodes: 50, max conn: 1, send rate: 0.25, seed: 2
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
#Total sources/connections: 1/1
#
