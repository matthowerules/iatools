#!/bin/bash

#mkdir /tmp/r
for i in vm1 vm2 vm3 vm4 vm5 ;
    do scp -r /tmp/manual-rhel6-new.sh $i:/tmp/ &&
    ssh $i 'sudo bash /tmp/manual-rhel6-new.sh' &&
    ssh $i 'sudo chmod 750 /tmp/manual-rhel' &&
    scp -r $i:/tmp/manual-rhel /tmp/r/manual-rhel-$i ;
done
