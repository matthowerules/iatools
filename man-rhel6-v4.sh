#!/bin/bash
#Add output to an associative array, store array, then eventually output to XCCDF

echo "RHEL vulns" #>> /tmp/ia/output.txt
hostname #>> /tmp/ia/output.txt
cat /etc/sysconfig/network-scripts/ifcfg-eth0 | grep IPADDR | sed 's/^\(IPADDR=\)\1*//' #>> /tmp/ia/output.txt1
#getenforce #>> /tmp/ia/output.txt

#example
#results = ( RHEL-06-000008, SV-50276r3_rule, V-38476, $status, $output )


#Manual CAT I Checks
echo -e "CAT I Vulnerabilities\n\n"

#001 - "RHEL-06-000008" "SV-50276r3_rule" "V-38476"
output=`rpm -q gpg-pubkey | grep 0493b`
if [ ! -z $output ] ; then
    status="NotAFinding"
else
    status="Open"
fi
results=("RHEL-06-000008" "SV-50276r3_rule" "V-38476" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#002 - RHEL-06-000284 SV-50467r2_rule V-38666
output=`[ -f /opt/NAI/LinuxShield/engine/dat/avvscan.dat ] && ls /opt/NAI/LinuxShield/engine/dat`
#echo $output
if [[ ! -z $output ]] ; then
    status="NotAFinding"
else
    output="HBSS/AESS and the accompanying definitions do not exist"
    status="Open"
fi
results=("RHEL-06-000284" "SV-50467r2_rule" "V-38666" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#003 - RHEL-06-000286 SV-50469r2_rule V-38668
output=`[ -f /etc/init/control-alt-delete.conf ] && ls /etc/init | grep control-alt-delete`
if [[ ! -z $output ]] ; then
    status="NotAFinding"
else
    output="/etc/init/control-alt-delete.conf is not configured correctly"
    status="Open"
fi
results=("RHEL-06-000286" "SV-50469r2_rule" "V-38668" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#004 - "RHEL-06-000309" "SV-50478r1_rule" "V-38677"
output=`grep insecure_locks /etc/exports`
if [[ -z $output ]] ; then
    output="No output for #grep insecure_locks /etc/exports"
    status="NotAFinding"
else
    status="Open"
fi
results=("RHEL-06-000309" "SV-50478r1_rule" "V-38677" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#005 - "RHEL-06-000341" "SV-50454r1_rule" "V-38653"
output=`[ -e /etc/snmp/snmpd.conf ] && grep -v "^#" /etc/snmp/snmpd.conf | grep public`
if [[ -z $output ]] ; then
    output="No output for #grep -v \"^#\" /etc/snmp/snmpd.conf | grep public"
    status="NotAFinding"
else
    status="Open"
fi
results=("RHEL-06-000341" "SV-50454r1_rule" "V-38653" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#006 - "RHEL-06-000514" "SV-50262r1_rule" "V-38462"
output=`for i in /usr/lib/rpm/rpmrc /usr/lib/rpm/redhat/rpmrc /etc/rpmrc ~root/.rpmrc; do [ -e $i ] && grep nosignature $i ; done`
if [[ -z $output ]] ; then
    output="No results for #grep nosignature /etc/rpmrc /usr/lib/rpm/rpmrc /usr/lib/rpm/redhat/rpmrc ~root/.rpmrc"
    status="NotAFinding"
else
    status="Open"
fi
results=("RHEL-06-000514" "SV-50262r1_rule" "V-38462" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt




#Manual CAT II Checks
echo -e "\nCAT II Vulnerabilities\n" #>> /tmp/ia/output.txt1

##############
#STIG ID: RHEL-06-000011  Rule ID: SV-50281r1_rule  Vuln ID: V-38481 - DCGS HF process, not RHEL SS" 
#if
#yum check-update 
#fi

#007 - "RHEL-06-000018" "SV-65601r1_rule" "V-51391"
output=`[ -e /etc/aide.conf ] && cat /etc/aide.conf | grep "define DBDIR" | sed 's/^@@define\sDBDIR\s\(.*\)/\1/' && cat /etc/aide.conf | grep "database" | grep -v "^#" | grep -v "new" | sed 's/^.*\/\(.*\)/\1/'`
output=`echo $output | sed 's/^\(.*\)\s\(.*\)/\1\/\2/'`
if [ -e $output ] ; then
    status="NotAFinding"
    output=`ls -l $output`
else
    status="Open"
    output="File does not exist"
fi
results=("RHEL-06-000018" "SV-65601r1_rule" "V-51391" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#008 - "RHEL-06-000029" "SV-50297r3_rule" "V-38496"
output=`awk -F: '$1 !~ /^root$/ && $2 !~ /^[!*]/ {print $1 ":" $2}' /etc/shadow | sed 's/\(.*\)\:.*/\1/'`
if [ -z $output ] ; then
	status="NotAFinding"
	output="No accounts from #awk -F: '$1 !~ /^root$/ && $2 !~ /^[!*]/ {print $1 ":" $2}' /etc/shadow | sed 's/\(.*\)\:.*/\1/'"
else
	status="Open"
fi
results=("RHEL-06-000029" "SV-50297r3_rule" "V-38496" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#009 - "RHEL-06-000045" "SV-50265r3_rule" "V-38465"
if [[ $(find -L {/lib,/lib64,/usr/lib,/usr/lib64} -perm /022 -type f) = 1 ]] ; then
        status="Open"
        output=`find -L {/lib,/lib64,/usr/lib,/usr/lib64} -perm /022 -type f 2>&1`
else
        status="NotAFinding"
        output="No results for query #find -L {/lib,/lib64,/usr/lib,/usr/lib64} -perm /022 -type f"
fi
results=("RHEL-06-000045" "SV-50265r3_rule" "V-38465" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#010 - "RHEL-06-000073" "SV-50394r1_rule" "V-38593"
output=`cat /etc/issue | cut -c -80`
if [[ ! -z $output ]] ; then
        status="NotAFinding"
else
        status="Open"
        output="No MOTD set in /etc/issue"
fi
results=("RHEL-06-000073" "SV-50394r1_rule" "V-38593" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#011 - "RHEL-06-000078" "SV-50397r2_rule" "V-38596"
output=`grep kernel.randomize_va_space /etc/sysctl.conf`
if [[ $output = *2* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000078" "SV-50397r2_rule" "V-38596" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#012 - "RHEL-06-000079" "SV-50398r2_rule" "V-38597"
output=`grep kernel.exec-shield /etc/sysctl.conf`
if [[ $output = *1* ]] ; then 
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000079" "SV-50398r2_rule" "V-38597" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#013 - "RHEL-06-000103" "SV-50350r3_rule" "V-38549"
#014 - "RHEL-06-000106" "SV-50352r3_rule" "V-38551"
#015 - "RHEL-06-000107" "SV-50354r3_rule" "V-38553"
output=`lsmod|grep -i ipv6`
if [ -z $output ] ; then
    status="NotApplicable"
    output="IPv6 is not loaded or used, verified with #lsmod|grep -i ipv6"
else
    if [[ -e $(service ip6tables status|grep "not running") ]]  ; then
        status="Open"
    fi
    status="NotAFinding"
fi
results=("RHEL-06-000103" "SV-50350r3_rule" "V-38549" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000106" "SV-50352r3_rule" "V-38551" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000107" "SV-50354r3_rule" "V-38553" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#016 - "RHEL-06-000116" "SV-50361r2_rule" "V-38560"
output=`service iptables status`
if [[ $output = *not* ]] ; then
    status="Open"
else
    status="NotAFinding"
    output=`echo $output | cut -c -80`
fi
results=("RHEL-06-000116" "SV-50361r2_rule" "V-38560" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#017 - "RHEL-06-000134" "SV-50320r2_rule" "V-38519"
#018 - "RHEL-06-000135" "SV-50424r2_rule" "V-38623"
output=`ls -ld /var/log | awk '{print $3}'`
if [[ $output = root ]] ; then
    status="NotAFinding"
    output="#ls -ld /var/log - owner for logs dir is $output"
else
    status="Open"
    output="#ls -ld /var/log - owner for logs dir is $output"
fi
results=("RHEL-06-000134" "SV-50320r2_rule" "V-38519" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000135" "SV-50424r2_rule" "V-38623" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#019 - "RHEL-06-000145" "SV-50429r2_rule" "V-38628"
#020 - "RHEL-06-000148" "SV-50432r2_rule" "V-38631"
#021 - "RHEL-06-000154" "SV-50433r2_rule" "V-38632"
output=`service auditd status`
if [[ $output = *running* ]] ; then 
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000145" "SV-50429r2_rule" "V-38628" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000148" "SV-50432r2_rule" "V-38631" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000154" "SV-50433r2_rule" "V-38632" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#022 - "RHEL-06-000161" "SV-50435r2_rule" "V-38634"
output=`grep max_log_file_action /etc/audit/auditd.conf`
if [[ $output = *ROTATE* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000161" "SV-50435r2_rule" "V-38634" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000223" "SV-50410r2_rule" "V-38609"
output=`chkconfig --list | grep tftp`
if [ ! -z $output ] ; then
	status="Open"
else
	status="NotAFinding" 
	output="No output for #chkconfig --list | grep tftp"
fi
results=("RHEL-06-000223" "SV-50410r2_rule" "V-38609" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000243" "SV-50418r1_rule" "V-38617"
output=`grep -i Ciphers /etc/ssh/sshd_config`
if [[ $output = *aes* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000243" "SV-50418r1_rule" "V-38617" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000252" "SV-50426r1_rule" "V-38625"
#"RHEL-06-000253" "SV-50427r1_rule" "V-38626"
output=`chkconfig --list | grep ldap`
if [[ $output = *ldap* ]] ; then
	output=`grep start_tls /etc/pam_ldap.conf` 
	if [ -z $output ] ; then
		status="Open"
	else
		status="NotAFinding" 
	fi
else
	status="NotApplicable"
fi
results=("RHEL-06-000252" "SV-50426r1_rule" "V-38625" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000253" "SV-50427r1_rule" "V-38626" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000269" "SV-50453r2_rule" "V-38652"
#"RHEL-06-000270" "SV-50455r2_rule" "V-38654"
output=`mount | grep nfs`
if [ -z $output ; then 
	status="NotAFinding"
else
	status="Open" 
fi
results=("RHEL-06-000269" "SV-50453r2_rule" "V-38652" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000270" "SV-50455r2_rule" "V-38654" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000274" "SV-50459r1_rule" "V-38658"
output=`grep remember /etc/pam.d/system-auth`
if [[ $output = *5* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000274" "SV-50459r1_rule" "V-38658" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


#echo "******STIG ID: RHEL-06-000278  Rule ID: SV-50464r1_rule  Vuln ID: V-38663" 
#rpm -V audit | grep '^.M' 
#echo "******STIG ID: RHEL-06-000279  Rule ID: SV-50465r1_rule  Vuln ID: V-38664" 
#rpm -V audit | grep '^.....U' 
#echo "******STIG ID: RHEL-06-000280  Rule ID: SV-50466r1_rule  Vuln ID: V-38665" 
#rpm -V audit | grep '^......G' 
#echo "******STIG ID: RHEL-06-000281  Rule ID: SV-50438r2_rule  Vuln ID: V-38637" 
#rpm -V audit | awk '$1 ~ /..5/ && $2 != "c"' 


#"RHEL-06-000282" "SV-50444r3_rule" "V-38643"
output=`find -xdev -type f -perm -002`
if [[ $output = 1 ]] ; then 
	status="Open"
else
	status="NotAFinding"
fi
results=("RHEL-06-000282" "SV-50444r3_rule" "V-38643" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000285" "SV-50468r2_rule" "V-38667"
output=`chkconfig --list | grep -i nails`
if [[ -z $output ]] ; then
	status="Open"
else
	output=`service nails status`
	if [[ $output = *running* ]] ; then
		status="NotAFinding"
	else
		status="Off"
	fi
fi
results=("RHEL-06-000285" "SV-50468r2_rule" "V-38667" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


#"RHEL-06-000302" "SV-50496r2_rule" "V-38695"
#"RHEL-06-000303" "SV-50497r2_rule" "V-38696"
#"RHEL-06-000304" "SV-50499r2_rule" "V-38698"
#"RHEL-06-000305" "SV-50501r2_rule" "V-38700"
#"RHEL-06-000306" "SV-50471r2_rule" "V-38670"
#"RHEL-06-000307" "SV-50474r2_rule" "V-38673"
output=`grep -ri aide /etc/crontab /etc/cron.*/*`  #could use some work... fuck it, whatever.
if [[ ! -z $output ]] ; then
	status="NotAFinding" 
	output=""
else
	status="Open"
	output="Run #grep -ri aide /etc/crontab /etc/cron.*/* for details"
fi
results=("RHEL-06-000302" "SV-50496r2_rule" "V-38695" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000303" "SV-50497r2_rule" "V-38696" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000304" "SV-50499r2_rule" "V-38698" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000305" "SV-50501r2_rule" "V-38700" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000306" "SV-50471r2_rule" "V-38670" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000307" "SV-50474r2_rule" "V-38673" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000311" "SV-50479r2_rule" "V-38678"
output=`grep ^space_left /etc/audit/auditd.conf | grep -v action | sed 's/space_left\s\=\s\(.*\)/\1/'` 
if [ $output = 75 ] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000311" "SV-50479r2_rule" "V-38678" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000315" "SV-50483r3_rule" "V-38682"
output=`grep -r bluetooth /etc/modprobe.d`
if [[ $output = *disable* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000315" "SV-50483r3_rule" "V-38682" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt

#"RHEL-06-000320" "SV-50487r1_rule" "V-38686"
output=`grep ":FORWARD" /etc/sysconfig/iptables`
if [[ $output = *DROP* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000320" "SV-50487r1_rule" "V-38686" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt



#echo "******GCONF2" 
#results=("RHEL-06-000326" "SV-50490r3_rule" "V-38689" "$status" "$output")
#results=("RHEL-06-000527" "SV-55880r2_rule" "V-43150" "$status" "$output")
#echo "" 
#echo "" 
#gconftool-2 
#echo "" 

#"RHEL-06-000340" "SV-50461r1_rule" "V-38660"
if [ ! -e /etc/snmp/snmp.conf ] ; then
	output=`grep 'v1\|v2c\|com2sec' /etc/snmp/snmpd.conf | grep -v '^#'`
	status=EvaluateResults 
else
	status="NotAFinding"
fi
results=("RHEL-06-000340" "SV-50461r1_rule" "V-38660" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(find /root /home -xdev -name .netrc) = 1 ]] ; then
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000347" "SV-50420r2_rule" "V-38619" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(chkconfig --list|grep ftp) = 1 ]] ; then
	grep "banner_file" /etc/vsftpd/vsftpd.conf 
	$status = EvaluateResults 
else
	status="NotAFinding" 
fi
results=("RHEL-06-000348" "SV-50400r2_rule" "V-38599" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


#results=("RHEL-06-000349" "SV-50396r2_rule" "V-38595 - CAC/PKI" "$status" "$output")
#results=("RHEL-06-000504" "SV-50289r1_rule" "V-38488 - Backup" "$status" "$output")
#results=("RHEL-06-000505" "SV-50287r1_rule" "V-38486 - Backup" "$status" "$output")
#results=("RHEL-06-000524" "SV-50239r1_rule" "V-38439 - User MGMT Policy" "$status" "$output")
#echo haaa 


grep "^log_file" /etc/audit/auditd.conf|sed 's/^[^/]*//; s/[^/]*$//'|xargs stat -c %a:%n 
status="NotAFinding"
results=("RHEL-06-000385" "SV-50294r1_rule" "V-38493" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(grep -i "^PrintLastLog" /etc/ssh/sshd_config) = *yes* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000507" "SV-50285r2_rule" "V-38484" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(grep disk_full_action /etc/audit/auditd.conf) = *SINGLE* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000510" "SV-50268r1_rule" "V-38468" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt



if [[ $(grep disk_error_action /etc/audit/auditd.conf) = *SINGLE* ]] ; then
	grep disk_error_action /etc/audit/auditd.conf 
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000511" "SV-50264r1_rule" "V-38464" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


postconf alias_maps 
status="NotAFinding"
results=("RHEL-06-000521" "SV-50246r1_rule" "V-38446" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


grep "^log_file" /etc/audit/auditd.conf|sed s/^[^\/]*//|xargs stat -c %G:%n 
status="NotAFinding"
results=("RHEL-06-000522" "SV-50245r2_rule" "V-38445" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt



results=("RHEL-06-000523" "SV-50244r2_rule" "V-38444" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
#service ip6tables status 
status="NotAFinding"



#results=("RHEL-06-000528" "SV-71919r1_rule" "V-57569" "$status" "$output")
#grep '\s/tmp' /etc/fstab 
#echo -e "Waivers and exceptions...\n" 


egrep '^[^#]*NOPASSWD' /etc/sudoers /etc/sudoers.d/* 
egrep '^[^#]*!authenticate' /etc/sudoers /etc/sudoers.d/* 
if [[ $(egrep '^[^#]*NOPASSWD' /etc/sudoers /etc/sudoers.d/*) = 1 ]] ; then
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000529" "SV-73331r1_rule" "V-58901" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt



#Manual CAT III Checks
echo -e "CAT III Vulnerabilities\n\n" 

if [[ $(ls -RZ /dev | grep unlabeled_t) = 1 ]] ; then
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000025" "SV-65589r1_rule" "V-51379" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


#grep logrotate /var/log/cron* 
status="NotAFinding"
results=("RHEL-06-000138" "SV-50425r1_rule" "V-38624" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(auditctl -l | egrep '(sethostname|setdomainname|/etc/issue|/etc/issue.net|/etc/hosts|/etc/sysconfig/network)') = 1 ]] ; then
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000182" "SV-50341r2_rule" "V-38540" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(grep EACCES /etc/audit/audit.rules) = 1 ]] ; then
	grep EACCES /etc/audit/audit.rules 
	grep EPERM /etc/audit/audit.rules 
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000197" "SV-50367r2_rule" "V-38566" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


find / -xdev -type f -perm /6000 2>/dev/null 
grep path /etc/audit/audit.rules 
echo -e "Compare the above output to each other...\n" 
results=("RHEL-06-000198" "SV-50368r4_rule" "V-38567" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(grep noexec /etc/fstab) = 1 ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000271" "SV-50456r1_rule" "V-38655" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


#grep sec /etc/fstab /etc/mtab 
echo -e " \n" 
results=("RHEL-06-000273" "SV-50458r2_rule" "V-38657" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


status="Not Applicable"
output=""
results=("RHEL-06-000275" "SV-50460r1_rule" "V-38659 - DISK PART ENCRYPTION" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000276" "SV-50462r1_rule" "V-38661 - DISK PART ENCRYPTION" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000277" "SV-50463r1_rule" "V-38662 - DISK PART ENCRYPTION" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000297" "SV-50486r1_rule" "V-38685 - CHG TEMP USERS PW" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000298" "SV-50491r1_rule" "V-38690 - EXPIRE EMERGENCY USERS" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
results=("RHEL-06-000508" "SV-50274r2_rule" "V-38474 - GCONF2" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt
echo -e "Not Applicable\n" 


if [[ $(pwck -r | grep 'no group') = 1 ]] ; then
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000294" "SV-50482r2_rule" "V-38681" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(pwck -rq) = 1 ]] ; then
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000296" "SV-50484r1_rule" "V-38683" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(grep pam_cracklib /etc/pam.d/system-auth) = *3* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000299" "SV-50494r2_rule" "V-38693" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(grep vsftpd /etc/xinetd.d/*) = 1 ]] ; then
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000339" "SV-50503r1_rule" "V-38702" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(grep active /etc/audisp/plugins.d/syslog.conf) = *yes* ]] ; then
	status="NotAFinding" 
else
	status="Open"
fi
results=("RHEL-06-000509" "SV-50271r1_rule" "V-38471" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


if [[ $(grep all_squash /etc/exports) = 1 ]] ; then
	status="Open"
else
	status="NotAFinding" 
fi
results=("RHEL-06-000515" "SV-50260r1_rule" "V-38460" "$status" "$output")
echo ${results[*]} #>> /tmp/ia/output.txt


#echo "*******STIG ID: RHEL-06-000516  Rule ID: SV-50254r1_rule  Vuln ID: V-38454" 
#rpm -Va | grep '^.....U' 
#echo "*******STIG ID: RHEL-06-000517  Rule ID: SV-50253r1_rule  Vuln ID: V-38453" 
#rpm -Va | grep '^......G' 
#echo "*******STIG ID: RHEL-06-000518  Rule ID: SV-50252r1_rule  Vuln ID: V-38452" 
#rpm -Va  | grep '^.M' 
#echo "*******STIG ID: RHEL-06-000519  Rule ID: SV-50247r2_rule  Vuln ID: V-38447" 
#rpm -Va | awk '$1 ~ /..5/ && $2 != "c"' 
#echo "Documented..." 

echo "\nfin" 
