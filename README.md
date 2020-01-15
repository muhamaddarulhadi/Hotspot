UNTUK BYPASS HOTSPOT KAT LAPTOP UNTUK GUNA DATA SELAIN DARI HOTSPOT DI HANDPHONE

step 1: buka hotspot di phone

step 2: di laptop/pc, connect kepada hotspot

step 3: di laptop, buka cmd, run as administrator 

step 4: type "netsh int ipv4 set glob defaultcurhoplimit=65" di cmd tu

step 5: tekan enter dan akan keluar ok

step 6: dah bypass



---------------------------------NOTED----------------------------------

using hotspot data from your mobile phone on your laptop/computer

netsh int ipv4 set glob defaultcurhoplimit=65

netsh int ipv6 set glob defaultcurhoplimit=65

-------------------------------------------------------------------------

use your laptop as a Wi-Fi repeater:

netsh int ipv4 set glob defaultcurhoplimit=64

netsh int ipv6 set glob defaultcurhoplimit=64

-------------------------------------------------------------------------

set it to default

netsh int ipv4 set glob defaultcurhoplimit=128

netsh int ipv6 set glob defaultcurhoplimit=128



*************************************************************************

defaultcurhoplimit - Default HopLimit of packets sent


*************************************************************************



Default TTL and Hop Limit values vary between different operating systems, here are 

the defaults for a few:

Linux kernel 2.4 (circa 2001): 255 for TCP, UDP and ICMP

Linux kernel 4.10 (2015): 64 for TCP, UDP and ICMP

Windows XP (2001): 128 for TCP, UDP and ICMP

Windows 10 (2015): 128 for TCP, UDP and ICMP

Windows Server 2008: 128 for TCP, UDP and ICMP

Windows Server 2019 (2018): 128 for TCP, UDP and ICMP

MacOS (2001): 64 for TCP, UDP and ICMP

