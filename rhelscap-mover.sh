#!/bin/bash
user=`whoami`
group=`id -gn`
benchmark="/tmp/U_RedHat_6_V1R15_STIG_SCAP_1-1_Benchmark.zip"
for i in vm1 vm2 vm3 vm4 vm5 ;
    do scp -r $benchmark $i:/tmp/ &&
    ssh $i "sudo rm -rf /home/$user/SCC/Results/SCAP/" &&
    ssh $i "sudo /opt/scc/cscc -ua" &&
    ssh $i "sudo /opt/scc/cscc -isr $benchmark" &&
    ssh $i "sudo chmod -R 600 /home/$user/SCC/" &&
    ssh $i "sudo chown -R $user:'$group' /home/$user/SCC/" &&
    scp -r $i:/home/$user/SCC/Results/SCAP/ /tmp/r/ ;
done

#can combine with above
for i in vm1 vm2 vm3 vm4 vm5 ;
    do scp -r /tmp/man-rhel-v3ip.sh $i:/tmp/ &&
    ssh $i 'sudo bash /tmp/man-rhel-v3ip.sh' &&
    ssh $i 'sudo chmod 600 /tmp/manual-results' &&
    scp -r $i:/tmp/manual-results /tmp/manual-results-$i ;
done
