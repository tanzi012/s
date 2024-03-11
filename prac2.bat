prac2
    r1 ,r2,r3
config t
line vty 0 4
password vtypa55
login
exit
enable secret enpa55

Configure OSPF on routers
router ospf 1
network 192.168.1.0 0.0.0.255 area 0
router ospf 1
network 10.1.1.0 0.0.0.3 area 0

ospf authenticate sabhi pc pe
pass : enpa55
on all right same router ospf 1
router ospf 1
area 0 authentication message_digest
exit
int gig0/0
ip ospf message-digest-key 1 md5 MDpa55
 
 exit
 exit
 show ip ospf interface
PC0 > ping 192.168.1.3
Successful
PC1 > ping 192.168.1.2
Successful

 r1

 username admin secret adminpa55
 aaa new-model
aaa authentication login default local
line console 0
aaa login authentication default
end 

r1
config t
ip domain name ccnasecurity.com
crypto key generate rsa
aaa authentication default SSH-LOGIN local
line vty 0 4
login authentication SSH-LOGIN 
transport input ssh
end

cp 0
ssh -l Admin 192.168.1.1

cp1
ssh 
