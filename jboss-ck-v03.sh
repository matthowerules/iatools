#!/bin/bash

for vm in v1 v2 v3 ; do
    if [ $vm == "v1" ] ; then
	app="a1 a2 a3"
    elif [ $vm == "v2" ] ; then
	app="a4 a5 a6"
    elif [ $vm == "v3" ] ; then
        app="a7 a8 a9"
    else
	exit 1
    fi

    for i in $app ; do
        # v-62073,62223,62229,62279,62283,62285,62297,62303,62305
        output=`ssh $vm "sudo grep -r "management-interface" /opt/jboss-instances/$i/configuration/dcgs.xml -B 1| grep -i 'not present'"` 
	    if [[ ! -z $output ]] ; then
	        status="Closed"
	    else
	        status="Open"
	    fi
	    results=("$vm" "$i" "v-62073,62223,62229,62279,62283,62285,62297,62303,62305" "$status")
	    echo ${results[*]} >> /tmp/jboss-clean.txt
	    echo ${results[*]} $output >> /tmp/jboss-raw.txt
	
        # v-62215,62321,62323
	    output=`ssh $vm "sudo sed -n '/<connector/,/<\/connector/p' /opt/jboss-instances/$i/configuration/dcgs.xml | grep 'TLSv1[^.1||2]'"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open, TLSv1 present"
        fi
	    results=("$vm" "$i" "v-62215,62321,62323" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62217,62225
    	output=`ssh $vm "sudo cat /opt/jboss-instances/$i/configuration/$i.policy | grep -i permission"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62217,62225" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62221
    	output=`ssh $vm "sudo cat /opt/jboss-instances/$i/configuration/dcgs.xml | grep -i security-realm"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62221" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62313,62315,62329,62331,62333,62335,62337,62339,62341
    	output=`ssh $vm "sudo sed -n '/<audit-log/,/<\/audit-log/p' /opt/jboss-instances/$i/configuration/dcgs.xml"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62313,62315,62329,62331,62333,62335,62337,62339,62341" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62249
        output=`ssh $vm "sudo grep -r logger.level /opt/jboss-instances/$i/configuration/"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
        results=("$vm" "$i" "v-62249" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62251,62253,62255,62295,62299,62301
        output=`ssh $vm "sudo ls -l /opt/jboss-instances/$i/ | grep log | grep $i"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62251,62253,62255,62295,62299,62301" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt
        
        # v-62259
        output=`ssh $vm "sudo ls -l /opt/jboss-instances/$i/configuration/mgmt-users.properties | grep $i"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62259" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62261,62265
        output=`ssh $vm "sudo ps -ef|grep $i"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62261,62265" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62263
    	output=`ssh $vm "sudo grep -r datasources /opt/jboss-instances/$i/configuration/"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62263" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62271
        output=`ssh $vm "sudo grep -i welcome-root /opt/jboss-instances/$i/configuration/dcgs.xml | grep -i false"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62271" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} "$output" >> /tmp/jboss-raw.txt

        # v-62287,62289
        output=`ssh $vm "sudo grep -i vault  /opt/jboss-instances/$i/configuration/dcgs.xml"`
        if [[ ! -z $output ]] ; then
            status="Closed"
        else
            if [ $i == 'a8' ] ; then
                status="Closed, Alternative Implementation"
            elif [ $i == 'a9' ] ; then
                status="Closed/NA - No sensitive external strings"
            else
                status="Open"
            fi
        fi
	    results=("$vm" "$i" "v-62287,62289" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} $output >> /tmp/jboss-raw.txt
        
        # v-62311
        output=`ssh $vm "sudo grep -ri scan-enabled /opt/jboss-instances/$i/configuration/ | grep -i true"`
        if [[ -z $output ]] ; then
            status="Closed"
        else
            status="Open"
        fi
	    results=("$vm" "$i" "v-62311 - open if true, RA on POA&M" "$status")
        echo ${results[*]} >> /tmp/jboss-clean.txt
        echo ${results[*]} $output >> /tmp/jboss-raw.txt
    done
done
