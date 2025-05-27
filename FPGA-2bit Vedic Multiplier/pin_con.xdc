
## On-board Slide Switches
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {a[0]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {a[1]}]
#set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {a[2]}]
#set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports {a[3]}]
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports {b[0]}]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports {b[1]}]
#set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} [get_ports {b[2]}]
#set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS33} [get_ports {b[3]}]


## On-board LEDs
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {q[0]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {q[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {q[2]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {q[3]}]



# 7 Seg display
set_property -dict { PACKAGE_PIN E4    IOSTANDARD LVCMOS33 } [get_ports { anodes[3] }]
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { anodes[2] }]
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { anodes[1] }]
set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { anodes[0] }]
set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { segments[0] }]
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { segments[1] }]
set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { segments[2] }]
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { segments[3] }]
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { segments[4] }]
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { segments[5] }]
set_property -dict { PACKAGE_PIN D1    IOSTANDARD LVCMOS33 } [get_ports { segments[6] }]
set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { segments[7] }]
