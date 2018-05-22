#!/bin/bash
#rhel stig rpmdb dumps

#GW
#0
sudo hostname >> /tmp/rhel-users.csv && echo " " >> /tmp/rhel-users.csv &&
sudo cat /etc/passwd | awk -F : '{print $1 "," $5 "," $7}' >> /tmp/rhel-users.csv && echo " " >> /tmp/rhel-users.csv &&
#1
sudo hostname >> /tmp/rhel-svcs.csv && echo " " >> /tmp/rhel-svcs.csv &&
sudo chkconfig --list | awk -F "\t" '{print $1 $5}' | sed 's/ *3./,/' >> /tmp/rhel-svcs.csv && echo " " >> /tmp/rhel-svcs.csv &&
#2
sudo hostname >> /tmp/rhel-v38454.csv && echo " " >> /tmp/rhel-v38454.csv &&
echo "V-38454" >> /tmp/rhel-v38454.csv && sudo rpm -Va | grep '^.....U' >> /tmp/rhel-v38454.csv && echo " " >> /tmp/rhel-v38454.csv &&
#3
sudo hostname >> /tmp/rhel-v38453.csv && echo " " >> /tmp/rhel-v38453.csv &&
echo "V-38453" >> /tmp/rhel-v38453.csv && sudo rpm -Va | grep '^......G' >> /tmp/rhel-v38453.csv && echo " " >> /tmp/rhel-v38453.csv &&
#4
sudo hostname >> /tmp/rhel-v38452.csv && echo " " >> /tmp/rhel-v38452.csv &&
echo "V-38452" >> /tmp/rhel-v38452.csv && sudo rpm -Va | grep '^.M' >> /tmp/rhel-v38452.csv && echo " " >> /tmp/rhel-v38452.csv &&
#5
sudo hostname >> /tmp/rhel-v38447.csv && echo " " >> /tmp/rhel-v38447.csv &&
echo "V-38447" >> /tmp/rhel-v38447.csv && sudo rpm -Va | awk '$1 ~ /..5/ && $2 != "c"' >> /tmp/rhel-v38447.csv echo " " >> /tmp/rhel-v38447.csv ;

#Remaining VMs
for VM in vm1 vm2 vm3 vm4 vm5 ;
#0
    do ssh $VM sudo hostname >> /tmp/rhel-users.csv && echo " " >> /tmp/rhel-users.csv  &&
    ssh $VM sudo cat /etc/passwd | awk -F : '{print $1 "," $5 "," $7}' >> /tmp/rhel-users.csv && echo " " >> /tmp/rhel-users.csv &&
#1
    ssh $VM sudo hostname >> /tmp/rhel-svcs.csv && echo " " >> /tmp/rhel-svcs.csv &&
    ssh $VM sudo chkconfig --list | awk -F "\t" '{print $1 $5}' | sed 's/ *3./,/' && echo " " >> /tmp/rhel-svcs.csv &&
#2
    ssh $VM sudo hostname >> /tmp/rhel-v38454.csv && echo " " >> /tmp/rhel-v38454.csv &&
    ssh $VM sudo rpm -Va | grep  '^.....U' >> /tmp/rhel-v38454.csv && echo " " >> /tmp/rhel-v38454.csv &&
#3
    ssh $VM sudo hostname >> /tmp/rhel-v38453.csv && echo " " >> /tmp/rhel-v38453.csv &&
    ssh $VM sudo rpm -Va | grep '^......G' >> /tmp/rhel-v38453.csv  && echo " " >> /tmp/rhel-v38453.csv &&
#4
    ssh $VM sudo hostname >> /tmp/rhel-v38452.csv && echo " " >> /tmp/rhel-v38452.csv &&
    ssh $VM sudo rpm -Va | grep '^.M' >> /tmp/rhel-v38452.csv  && echo " " >> /tmp/rhel-v38452.csv &&
#5
    ssh $VM sudo hostname >> /tmp/rhel-v38447.csv && echo " " >> /tmp/rhel-v38447.csv &&
    ssh $VM sudo rpm -Va | awk '$1 ~ /..5/ && $2 != "c"' >> /tmp/rhel-v38447.csv echo " " >> /tmp/rhel-v38447.csv ;
done 2> /dev/null

#nned to split files, then unify in multiple tabs
