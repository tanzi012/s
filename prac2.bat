prac1
    r1 ,r2,r3
config t
line vty 0 4
password vtypa55
login
exit
enable secret enpa55

ospf on all routers
router ospf 1,2
network 192.168.1.0 0.0.0.255 area 0
network 10.1.1.0 0.0.0.3 area 0

ospf authenticate sabhi pc pe
pass : enpa55
on all right same router ospf 1
area 0 authentication message_digest
exit
interface s0/1/0
ip ospf message-digest-key 1 md5 MDpa55
 
 exit
 exit
 show ip ospf interface


 r1

 username admin secret adminpa55
 aaa new-model
aaa authentication login default local
line console 0