# Open_10Base-T1L_Switch
Open Hardware 6-Port 10Base-T1L, 1-Port 10Base-T1S and 1-Port 1000Base-T Field Switch Design

## Architecture
Two 5-port switch ICs (SJA1105ELY) form the basis of the design. Daisy chaining the two ICs gives a total of 8 ports.
Six of these ports are attachted to 10Base-T1L PHYs (ADIN1100), one port is attachted to a 10Base-T1S PHY (LAN8670), while the last port is attached to a 1000Base-T PHY (KSZ9131) as uplink. 

Each of the 10Base-T1L ports offer power over datalines utilizing two 5-Port power management controllers (LTC4296) with SCC support for power delivery negotiation.

An RP2040 functions as a system controller configuring the switch components.

