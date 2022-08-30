#==============================================
#  AODV without any Blackhole node for 50 nodes
#==============================================
#
#===================================
#     Simulation parameters setup
#===================================
source "../80211p.tcl"				
	   
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhyExt         ;# network interface type
set val(mac)    Mac/802_11Ext              ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     50                         ;# number of mobilenodes
set val(rp)     AODV                       ;# routing protocol
set val(x)      1000                       ;# X dimension of topography
set val(y)      800                        ;# Y dimension of topography
set val(bh)	blackholes.tcl		   ;# blackhole nodes file
set val(sc)	mobility.tcl		   ;# mobility file
set val(cp)	links/cbr1.tcl		   ;# node link file
set val(out_tr)  "results/50nodes.tr"	   ;# output file of tracefd
set val(out_nam) "results/50nodes.nam"	   ;# output file of namtrace 
set val(stop)   200.0                      ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns_ [new Simulator]

#Setup topography object
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

#Open the NS trace file
set tracefile [open $val(out_tr) w]
$ns_ trace-all $tracefile

#Open the NAM trace file
set namfile [open $val(out_nam) w]
$ns_ namtrace-all $namfile
$ns_ namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel

#===================================
#     Mobile node parameter setup
#===================================
$ns_ node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      OFF \
                -movementTrace ON

#===================================
#        Nodes Definition        
#===================================
for {set i 0} {$i < $val(nn) } {incr i} {
	set node_($i) [$ns_ node] 
	$node_($i) random-motion 0  ;# disable random motion
	$ns_ initial_node_pos $node_($i) 20
}

#===================================
#        Black hole nodes          
#===================================
source $val(bh)


#===================================
#        Generate movement          
#===================================
puts "Loading scenario file..."
source $val(sc)


#===================================
#        Agents Definition        
#===================================
puts "Loading connection pattern..."
source $val(cp)

#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns_ tracefile namfile
    $ns_ flush-trace
    close $tracefile
    #close $namfile
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop).01 "puts \"done\" ; $ns_ halt"

puts "Starting Simulation..."
$ns_ run
