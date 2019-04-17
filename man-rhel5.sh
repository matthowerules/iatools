#!/bin/bash

############### Process command line args ######################################

function usage () {
  printf "Usage: %s: [-H] [-h]\n" $(basename $0) >&2
  printf "%s\n" "-H,  human readable output (default is csv)" >&2
  printf "%s\n" "-h,  help" >&2
}

HumanReadable=0
while getopts 'Hh' OPTION
do
  case $OPTION in
  H)    HumanReadable=1
        ;;
  h)    usage
        exit 0
        ;;
  ?)    usage
        exit 2
        ;;
  esac
done
shift $((OPTIND - 1))

############### End of Process command line args ######################################

# Skip List for Catagory I STIGS
# GEN004620, GEN004640, GEN005300, GEN008600, GEN008640, GEN008680
printf "\nThe following CAT I STIGS require manual checking: %s\n\n" "GEN004620, GEN004640, GEN005300, GEN008600, GEN008640, GEN008680"

# Skip List for Catagory II STIGS
# GEN000120, GEN000140-2, GEN000140-3, GEN000220, GEN000240, GEN000244, GEN000280, GEN000290,
# GEN000340, GEN000360, GEN000400, GEN000402, GEN000410, GEN000510, GEN000520, GEN000600-2, GEN000740,
# GEN000760
printf "\nThe following CAT II STIGS require manual checking: %s\n\n" "GEN000120, GEN000140-2, GEN000140-3, GEN000220, GEN000240, GEN000244, GEN000280, GEN000290, GEN000340, GEN000360, GEN000400, GEN000402, GEN000410, GEN000510, GEN000520, GEN000600-2, GEN000740, GEN000760" 

# Variable Definitions
MIN_SENDMAIL=8.14.5-2


###############################################################################################
##################### Function Definitions ####################################################
###############################################################################################

function printCSV () {

    printf "Group ID: %s,Group Title: %s,Rule ID: %s,Severity: %s,STIG-ID: %s,Result: %s\n"\
           "$1" "$2" "$3" "$4" "$5" "$6"
}


function printHR () {

    printf "Group ID: %s\n" "$1"
    printf "Group Title: %s\n" "$2"
    printf "Rule ID: %s\n" "$3"
    printf "Severity: %s\n" "$4"
    printf "STIG-ID: %s\n" "$5"
    printf "Result: %s\n\n" "$6"
}


function printResult () {

    if [ "$HumanReadable" -eq 1 ]; then
        printHR "$1" "$2" "$3" "$4" "$5" "$6"
    else
        printCSV "$1" "$2" "$3" "$4" "$5" "$6"
    fi
}


function checkFileOwner () {

    presumedOwner=$1
    file=$2

    if [ ! -f "$file" ]; then
        return 1
    fi

    owner=`stat --printf=%U "$file"`
    if [ "$owner" != "$presumedOwner" ]; then
        return 2
    fi

    return 0
}


function checkGroupOwner () {

    presumedOwner=$1
    file=$2

    if [ ! -f "$file" ]; then
        return 1
    fi

    owner=`stat --printf=%G "$file"`
    if [ "$owner" != "$presumedOwner" ]; then
        return 2
    fi

    return 0
}

###############################################################################################
##################### End of Function Definitions #############################################
###############################################################################################




###############################################################################################
########################### CAT I STIGS ######################################################
###############################################################################################

function GEN000000-LNX00320 () {

    result=pass

    /bin/grep "^shutdown" /etc/passwd >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail 
    fi

    /bin/grep "^halt" /etc/passwd >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail 
    fi

    /bin/grep "^reboot" /etc/passwd >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail 
    fi

    printResult "V-4268" "GEN000000-LNX00320" "SV-37181r1_rule" "CAT I" "GEN000000-LNX00320" "$result"
}


GEN000000-LNX00320



function GEN000000-LNX00560 () {

    result=pass
    ps -ef | grep nfsd >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        exportfs -v | grep "insecure_locks"
        if [ $? -eq 0 ]; then
            result=fail
        fi
    fi

    printResult "V-4339" "GEN000000-LNX00560" "SV-37316r1_rule" "CAT I" "GEN000000-LNX00560" "$result"
}
    

GEN000000-LNX00560



function GEN000000-LNX00580 () {

    result=pass

    # see if ctrlaltdel is commented out
    line=`grep ctrlaltdel /etc/inittab 2>/dev/null |
           sed -n 's/\(^[[:space:]]*#.*$\)/\1/p'`
    if [ -n "$line" ]; then
        printResult "V-4342" "GEN000000-LNX00580" "SV-37327r1_rule" "CAT I" "GEN000000-LNX00580" "$result"
        return
    fi

    # make sure the event goes to a logger
    grep ctrlaltdel /etc/inittab >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        grep "ctrlaltdel.*/usr/bin/logger" /etc/inittab >/dev/null 2>&1
        if [ $? -ne 0 ]; then
            result=fail 
        fi 
    fi

    printResult "V-4342" "GEN000000-LNX00580" "SV-37327r1_rule" "CAT I" "GEN000000-LNX00580" "$result"
}     

GEN000000-LNX00580



function GEN000560 () {

    result=pass

    /bin/grep nullok /etc/pam.d/system-auth /etc/pam.d/system-auth-ac\
    >/dev/null 2>&1

    if [ $? -eq 0 ]; then
        result=fail 
    fi 

    printResult "V-770" "GEN000560" "SV-37259r1_rule" "CAT I" "GEN000560" "$result"
}

GEN000560



function GEN001100 () {

    result=pass
    netlogin=0

    # see if root logged in over the network
    for ip in `last -i | grep '^root' | egrep -v "reboot|console" | awk '{print $3}'`; do
       if [ "$ip" != "0.0.0.0" -a "$ip" != "::1" ]; then
           netlogin=1
           break
       fi
    done

    #if no network login, just return
    if [ $netlogin -eq 0 ]; then
        printResult "V-1046" "GEN001100" "SV-37150r1_rule" "CAT I" "GEN001100" "$result"
        return
    fi

    # see if sshd is running
    ps -ef | /bin/grep "[sS]shd"
    if [ $? -ne 0 ]; then
        result=fail
    fi

    printResult "V-1046" "GEN001100" "SV-37150r1_rule" "CAT I" "GEN001100" "$result"
}

GEN001100




function GEN001640 () {

    runScripts=($(ls -l /etc/init.d/* | tr '\011' ' ' | tr -s ' ' | cut -f9 -d' '))
    worldWritableFileList=($(find / -perm -002 -type f 2>/dev/null))
    result=pass

    for wwFile in "${worldWritableFileList[@]}"
    do
        for script in "${runScripts[@]}"
        do
            /bin/grep "$wwFile" "$script" >/dev/null 2>&1
            if [ $? -eq 0 ]; then
                result=fail
                #printf '%s\n' "$wwFile called from $script"
            fi
        done
    done

    printResult "V-910" "GEN001640" "SV-38154r2_rule" "CAT I" "GEN001640" "$result"
}


GEN001640


function GEN002040 () {

    result=pass

    file=`find / -name ".rhosts" 2>/dev/null`
    if [ -n "$file" ]; then
        result=fail
    fi

    file=`find / -name ".shosts" 2>/dev/null`
    if [ -n "$file" ]; then
        result=fail
    fi

    file=`find / -name "hosts.equiv" 2>/dev/null`
    if [ -n "$file" ]; then
        result=fail
    fi

    file=`find / -name "shosts.equiv" 2>/dev/null`
    if [ -n "$file" ]; then
        result=fail
    fi

    printResult "V-11988" "GEN002040" "SV-37370r1_rule" "CAT I" "GEN002040" "$result"
}

GEN002040



function GEN002220 () {

    result=pass

    permList=($(find / -name "*sh" 2>/dev/null | xargs -n1 ls -l 2>/dev/null | awk '{print $1}'))

    for i in ${permList[@]}; do
        grpWrite=`echo -n $i | cut -c6`
        if [ $grpWrite == "w" ]; then
            result=fail
            break
        fi
        worldWrite=`echo -n $i | cut -c9`
        if [ $worldWrite == "w" ]; then
            result=fail
            break
        fi
    done

    printResult "V-922" "GEN002220" "SV-37403r1_rule" "CAT I" "GEN002220" "$result"
}

GEN002220


function GEN003820 () {

    result=pass

    if [ -f /etc/xinetd.d/rsh ]; then
        grep disable /etc/xinetd.d/rsh >/dev/null 2>&1
        if [ $? -ne 0 ]; then
            result=fail
        fi
    fi

    printResult "V-4687" "GEN003820" "SV-37441r1_rule" "CAT I" "GEN003820" "$result"
}


GEN003820


function GEN003840 () {

    result=pass

    if [ -f /etc/xinetd.d/rexec ]; then
        grep disable /etc/xinetd.d/rexec >/dev/null 2>&1
        if [ $? -ne 0 ]; then
            result=fail
        fi
    fi

    printResult "V-4688" "GEN003840" "SV-37443r1_rule" "CAT I" "GEN003840" "$result"
}


GEN003840



function GEN003850 () {

    result=pass

    ps -ef | grep [tT]elnetd >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail
    fi

    chkconfig --list 2>/dev/null | grep telnet 2>/dev/null | egrep '[0-9]+:on' 2>/dev/null
    if [ $? -eq 0 ]; then
        result=fail
    fi

    printResult "V-24386" "GEN003850" "SV-37444r1_rule" "CAT I" "GEN003850" "$result"
}


GEN003850



function GEN004220 () {

    result=pass

    ls -d /root/.mozilla >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail
    fi

    printResult "V-4382" "GEN004220" "SV-37469r1_rule" "CAT I" "GEN004220" "$result"
}


GEN004220


function GEN004400 () {

    result=pass

    paths=($(egrep "^[[:alnum:]]+:[[:space:]]+.*/" /etc/aliases 2>/dev/null\
           | sed -e 's%^[^/]*\(/.*$\)%\1%'))

    for i in ${paths[@]}; do
        owner=`stat --printf=%U $i 2>&1 | awk '{print $1}'`
        if [ "$owner" == "stat:" ]; then
            result=fail
            break
        elif [ "$owner" != "root" ]; then
            result=fail
            break
        else
            group=`stat --printf=%G $i 2>&1 | awk '{print $1}'`
            if [ "$group" != "root" ]; then
                result=fail
                break
            fi

            # now check permissions
            groupperm=`stat --printf=%a $i 2>&1 | cut -c2`
            if [ "$groupperm" -gt 5 ]; then
                result=fail
                break
            fi
            worldperm=`stat --printf=%a $i 2>&1 | cut -c3`
            if [ "$worldperm" -gt 5 ]; then
                result=fail
                break
            fi
             
        fi
    done

    printResult "V-833" "GEN004400" "SV-37491r1_rule" "CAT I" "GEN004400" "$result"
}

GEN004400




function GEN004600 () {

    result=pass

    version=`rpm -q sendmail | cut -d"-" -f2`
    release=`rpm -q sendmail | cut -d"-" -f3 | cut -c1`

    if [ "$version-$release" \< "$MIN_SENDMAIL" ]; then
        result=fail
    fi

    printResult "V-4689" "GEN004600" "SV-37507r1_rule" "CAT I" "GEN004600" "$result"
}

GEN004600


function GEN005000 () {

    result=pass
    match=false

    shell=`grep "^ftp" /etc/passwd 2>/dev/null | cut -d":" -f7 2>/dev/null`
    if [ -n "$shell" ]; then
        declare -a noshells=( "/bin/false" "/dev/null" "/usr/bin/false" "/bin/true" "/sbin/nologin" )
        for i in ${noshells[@]}; do
            if [ "$shell" == "$i" ]; then
                match=true
                break
            fi
        done
        if ! $match; then
            result=fail
        fi
    fi
 
    printResult "V-4387" "GEN005000" "SV-37549r1_rule" "CAT I" "GEN005000" "$result"
}
 
GEN005000



function GEN005080 () {

    result=pass

    if [ -f /etc/xinetd.d/tftp ]; then
        grep "server_args.*\-s" /etc/xinetd.d/tftp >/dev/null 2>&1
        if [ $? -ne 0 ]; then
            result=fail
        fi
    fi

    printResult "V-847" "GEN005080" "SV-37560r1_rule" "CAT I" "GEN005080" "$result"
}

GEN005080


function GEN005100 () {

    result=pass

    if [ -f /etc/xinetd.d/tftp ]; then
        perm=`grep "server[^_]" /etc/xinetd.d/tftp 2>/dev/null |
              cut -d"=" -f2 2>/dev/null | xargs -n1 stat --printf=%a 2>/dev/null`
        if [ "$perm" -gt 755 ]; then
            result=fail
        fi
    fi

    printResult "V-848" "GEN005100" "SV-37564r1_rule" "CAT I" "GEN005100" "$result"
}

GEN005100


function GEN005140 () {

    result=pass

    chkconfig --list 2>/dev/null | egrep 'tftp.*[0-9]+:on' /dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail
    fi

    printResult "V-4695" "GEN005140" "SV-37676r1_rule" "CAT I" "GEN005140" "$result"
}

GEN005140


function GEN005200 () {

    result=pass

    xhost 2>/dev/null | grep disabled >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail
    fi

    printResult "V-4697" "GEN005200" "SV-37683r1_rule" "CAT I" "GEN005200" "$result"
}

GEN005200



function GEN005500 () {

    result=pass

    protocols=`grep "^[[:space:]]*Protocol" /etc/ssh/sshd_config 2>/dev/null\
         | awk '{print $2}'`

    for i in ${protocols[@]}; do
        if [ "$i" == "1" -o "$i" == "2,1" -o "$i" == "1,2" ]; then
            result=fail
            break
        fi
    done

    printResult "V-4295" "GEN005500" "SV-37818r2_rule" "CAT I" "GEN005500" "$result"
}


GEN005500


function GEN006380 () {

    result=pass

    rpcinfo -p | grep yp 2>/dev/null | grep udp 2>/dev/null
    if [ $? -eq 0 ]; then
        result=fail
    fi

    printResult "V-4399" "GEN006380" "SV-37739r1_rule" "CAT I" "GEN006380" "$result"
}

GEN006380


function GEN008660 () {

    result=pass

    file -b /boot/grub/grub.conf >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        result=fail
    fi

    printResult "V-4248" "GEN008660" "SV-42186r1_rule" "CAT I" "GEN008660" "$result"
}

GEN008660


function GEN008700 () {

    result=pass

    if ! grep password /boot/grub/grub.conf >/dev/null 2>&1\
       && ! grep password /boot/grub/menu.lst >/dev/null 2>&1; then
        result=fail
    fi

    printResult "V-4249" "GEN008700" "SV-37933r1_rule" "CAT I" "GEN0008700" "$result"
}

GEN008700


###############################################################################################
########################### CAT II STIGS ######################################################
###############################################################################################


function GEN000000-LNX001431 () {

    result=pass

    owner=`stat --printf=%U /etc/gshadow 2>&1 | awk '{print $1}'`
    if [ "$owner" == "stat:" ]; then
        result=fail
    elif [ "$owner" != "root" ]; then
        result=fail
    fi

    printResult "V-22341" "GEN000000-LNX001431" "SV-37143r1_rule" "CAT II" "GEN000000-LNX001431" "$result"
}

GEN000000-LNX001431


function GEN000000-LNX001432 () {

    result=pass

    group=`stat --printf=%G /etc/gshadow 2>&1 | awk '{print $1}'`
    if [ "$group" == "stat:" ]; then
        result=fail
    elif [ "$group" != "root" ]; then
        result=fail
    fi

    printResult "V-22342" "GEN000000-LNX001432" "SV-37164r1_rule" "CAT II" "GEN000000-LNX001432" "$result"
}

GEN000000-LNX001432


function GEN000000-LNX001433 () {

    result=pass

    perms=`stat --printf=%a /etc/gshadow 2>&1 | awk '{print $1}'`
    if [ "$perms" != "400" ]; then
        result=fail
    fi

    printResult "V-22343" "GEN000000-LNX001433" "SV-37170r1_rule" "CAT II" "GEN000000-LNX001433" "$result"
}

GEN000000-LNX001433



function GEN000000-LNX001434 () {

    result=pass

    ls -l /etc/gshadow 2>/dev/null | awk '{print $1}' 2>/dev/null | grep "+" >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail
    fi

    printResult "V-22344" "GEN000000-LNX001434" "SV-37176r1_rule" "CAT II" "GEN000000-LNX001434" "$result"
}

GEN000000-LNX001434


function GEN000000-LNX001476 () {

    result=pass

    cut -d":" -f2 /etc/gshadow 2>/dev/null | egrep -v '^(x|!!)$' >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        result=fail
    fi

    printResult "V-22349" "GEN000000-LNX001476" "SV-37386r1_rule" "CAT II" "GEN000000-LNX001476" "$result"
}

GEN000000-LNX001476



function GEN000000-LNX00360 () {

    result=pass

    process=`ps -ef | grep -m 1 /usr/bin/X | grep -v grep`

    if [ -n "$process" ]; then
        if [[ ! "$process" =~ .*-auth.* ]]; then
            result=fail
        elif [[ ! "$process" =~ .*-audit\[\[:space:\]\]*4.* ]]; then
            result=fail
        elif [[ ! "$process" =~ .*-s\[\[:space:\]\]*[0-9]+.* ]]; then
            result=fail
        else
            sopt=`echo "$process" | egrep -o '\-s[[:space:]]*[[:digit:]]*' | head -n1 | awk '{print $2}'`
            if [ "$sopt" -gt 15 ]; then
                result=fail
            fi
        fi
    fi

    printResult "V-1021" "GEN000000-LNX00360" "SV-37207r1_rule" "CAT II" "GEN000000-LNX00360" "$result"
}
 
GEN000000-LNX00360



function GEN000000-LNX00380 () {

    result=pass

    process=`ps -ef | grep -m 1 /usr/bin/X | grep -v grep`

    if [ -n "$process" ]; then
        if [[ "$process" =~ .*-ac.* ]]; then
            result=fail
        elif [[ "$process" =~ .*-core.* ]]; then
            result=fail
        elif [[ "$process" =~ .*-nolock.* ]]; then
            result=fail
        fi
    fi

    printResult "V-1022" "GEN000000-LNX00380" "SV-37217r1_rule" "CAT II" "GEN000000-LNX00380" "$result"
}
 
GEN000000-LNX00380


function GEN000000-LNX00400 () {

    result=pass

    if [ -f /etc/security/access.conf ]; then
        owner=`stat --printf=%U /etc/security/access.conf 2>/dev/null`
        if [ "$owner" != "root" ]; then
            result=fail
        fi
    fi

    printResult "V-1025" "GEN000000-LNX00400" "SV-37224r1_rule" "CAT II" "GEN000000-LNX00400" "$result"
}

GEN000000-LNX00400


function GEN000000-LNX00420 () {

    result=pass

    if [ -f /etc/security/access.conf ]; then
        group=`stat --printf=%G /etc/security/access.conf 2>/dev/null`
        if [ "$group" != "root" ]; then
            result=fail
        fi
    fi

    printResult "V-1054" "GEN000000-LNX00420" "SV-37227r1_rule" "CAT II" "GEN000000-LNX00420" "$result"
}

GEN000000-LNX00420


function GEN000000-LNX00440 () {

    result=pass

    if [ -f /etc/security/access.conf ]; then
        perms=`stat --printf=%a /etc/security/access.conf 2>/dev/null`
        if [ "$perms" -gt 640 ]; then
            result=fail
        fi
    fi

    printResult "V-1055" "GEN000000-LNX00440" "SV-37243r1_rule" "CAT II" "GEN000000-LNX00440" "$result"
}

GEN000000-LNX00440


function GEN000000-LNX00450 () {

    result=pass

    if [ -f /etc/security/access.conf ]; then
        ls -l /etc/security/access.conf 2>/dev/null | awk '{print $1}' 2>/dev/null | grep "+" >/dev/null 2>&1
        if [ $? -eq 0  ]; then
            result=fail
        fi
    fi

    printResult "V-22595" "GEN000000-LNX00450" "SV-26998r1_rule" "CAT II" "GEN000000-LNX00450" "$result"
}

GEN000000-LNX00450


function GEN000000-LNX00480 () {

    result=pass

    checkFileOwner "root" "/etc/sysctl.conf"
    if [ $? -ne 0 ]; then
        result=fail
    fi

    printResult "V-4334" "GEN000000-LNX00480" "SV-37253r1_rule" "CAT II" "GEN000000-LNX00480" "$result"
}    

GEN000000-LNX00480



function GEN000000-LNX00500 () {

    result=pass

    checkGroupOwner "root" "/etc/sysctl.conf"
    if [ $? -ne 0 ]; then
        result=fail
    fi

    printResult "V-4335" "GEN000000-LNX00500" "SV-37257r1_rule" "CAT II" "GEN000000-LNX00500" "$result"
}    

GEN000000-LNX00500


function GEN000000-LNX00520 () {

    result=pass

    if [ -f /etc/sysctl.conf ]; then
        perms=`stat --printf=%a /etc/sysctl.conf 2>/dev/null`
        if [ "$perms" -gt 600 ]; then
            result=fail
        fi
    fi

    printResult "V-4336" "GEN000000-LNX00520" "SV-37258r1_rule" "CAT II" "GEN000000-LNX00520" "$result"
}

GEN000000-LNX00520



function GEN000000-LNX00530 () {

    result=pass

    if [ -f /etc/sysctl.conf ]; then
        ls -l /etc/sysctl.conf 2>/dev/null | awk '{print $1}' 2>/dev/null | grep "+" >/dev/null 2>&1
        if [ $? -eq 0  ]; then
            result=fail
        fi
    fi

    printResult "V-22596" "GEN000000-LNX00530" "SV-26999r1_rule" "CAT II" "GEN000000-LNX00530" "$result"
}

GEN000000-LNX00530



function GEN000000-LNX00600 () {

    result=pass

    if grep pam_console.so /etc/pam.d/* >/dev/null 2>&1 ||
       -f /etc/security/console.perms ; then
        result=fail
    fi
       
    printResult "V-4346" "GEN000000-LNX00600" "SV-37339r1_rule" "CAT II" "GEN000000-LNX00600" "$result"
}

GEN000000-LNX00600



function GEN000000-LNX00620 () {

    result=pass

    if ! checkGroupOwner "root" "/etc/securetty" &&
       ! checkGroupOwner "sys" "/etc/securetty" &&
       ! checkGroupOwner "bin" "/etc/securetty" ; then
        result=fail
    fi
       
    printResult "V-12038" "GEN000000-LNX00620" "SV-37340r1_rule" "CAT II" "GEN000000-LNX00620" "$result"
}

GEN000000-LNX00620



function GEN000000-LNX00640 () {

    result=pass

    checkFileOwner "root" "/etc/securetty"
    if [ $? -ne 0 ]; then
        result=fail
    fi

    printResult "V-12039" "GEN000000-LNX00640" "SV-37341r1_rule" "CAT II" "GEN000000-LNX00640" "$result"
}    

GEN000000-LNX00640



function GEN000000-LNX00660 () {

    result=pass

    if [ -f /etc/securetty ]; then
        perms=`stat --printf=%a /etc/securetty 2>/dev/null`
        if [ "$perms" -gt 600 ]; then
            result=fail
        fi
    fi

    printResult "V-12040" "GEN000000-LNX00660" "SV-37342r1_rule" "CAT II" "GEN000000-LNX00660" "$result"
}

GEN000000-LNX00660



function GEN000020 () {

    result=pass

    if ! grep ":S:.*/sbin/sulogin" /etc/inittab >/dev/null 2>&1 ; then
        result=fail
    fi

    printResult "V-756" "GEN000020" "SV-37350r1_rule" "CAT II" "GEN000020" "$result"
}

GEN000020



function GEN000241 () {

    result=fail

    if crontab -l 2>/dev/null | grep "ntpd -qg" >/dev/null 2>&1 ; then
        result=pass
    fi

    if grep "ntpd -qg" /etc/crontab >/dev/null 2>&1 ; then
        result=pass
    fi

    if grep "ntpd -qg" /etc/cron.d/* >/dev/null 2>&1 ; then
        result=pass
    fi

    if grep "ntpd -qg" /etc/cron.daily/* >/dev/null 2>&1 ; then
        result=pass
    fi

    if ps -ef | grep "[Nn]tpd -qg" >/dev/null 2>&1 ; then
        result=pass
    fi

    printResult "V-22290" "GEN000241" "SV-26292r1_rule" "CAT II" "GEN000241" "$result"
}

GEN000241



function GEN000242 () {

    result=pass

    numServers=`grep ^server /etc/ntp.conf 2>/dev/null\
               | egrep -v '(127.127.1.0|127.127.1.1)' 2>/dev/null | wc -l`
    if [ "$numServers" -lt 2 ]; then
        result=fail
    fi

    printResult "V-22291" "GEN000242" "SV-37412r1_rule" "CAT II" "GEN000242" "$result"
}

GEN000242



function GEN000250 () {

    result=pass

    checkFileOwner "root" "/etc/ntp.conf"
    if [ $? -ne 0 ]; then
        result=fail
    fi

    printResult "V-22294" "GEN000250" "SV-37415r1_rule" "CAT II" "GEN000250" "$result"
}    

GEN000250



function GEN000251 () {

    result=pass

    if ! checkGroupOwner "root" "/etc/ntp.conf" &&
       ! checkGroupOwner "sys" "/etc/ntp.conf" &&
       ! checkGroupOwner "bin" "/etc/ntp.conf" ; then
        result=fail
    fi
       
    printResult "V-22295" "GEN000251" "SV-37416r1_rule" "CAT II" "GEN000251" "$result"
}

GEN000251



function GEN000252 () {

    result=pass

    if [ -f /etc/ntp.conf ]; then
        perms=`stat --printf=%a /etc/ntp.conf 2>/dev/null`
        if [ "$perms" -gt 640 ]; then
            result=fail
        fi
    fi

    printResult "V-22296" "GEN000252" "SV-37417r1_rule" "CAT II" "GEN000252" "$result"
}

GEN000252



function GEN000253 () {

    result=pass

    if [ -f /etc/ntp.conf ]; then
        ls -l /etc/ntp.conf 2>/dev/null | awk '{print $1}' 2>/dev/null | grep "+" >/dev/null 2>&1
        if [ $? -eq 0  ]; then
            result=fail
        fi
    fi

    printResult "V-22297" "GEN000253" "SV-37418r1_rule" "CAT II" "GEN000253" "$result"
}

GEN000253



function GEN000290-1 () {

    result=pass

    if grep ^games /etc/passwd >/dev/null 2>&1 ; then
        result=fail
    fi

    printResult "V-29376" "GEN000290-1" "SV-38177r1_rule" "CAT II" "GEN000290-1" "$result"
}

GEN000290-1



function GEN000290-2 () {

    result=pass

    if rpm -q inn | grep 'not installed' >/dev/null 2>&1 ; then
        if grep ^news /etc/passwd >/dev/null 2>&1 ; then
            result=fail
        fi
    fi
        
    printResult "V-27275" "GEN000290-2" "SV-34574r1_rule" "CAT II" "GEN000290-2" "$result"
}

GEN000290-2



function GEN000290-3 () {

    result=pass

    if grep ^gopher /etc/passwd >/dev/null 2>&1 ; then
        result=fail
    fi

    printResult "V-27276" "GEN000290-3" "SV-34575r1_rule" "CAT II" "GEN000290-3" "$result"
}

GEN000290-3



function GEN000290-4 () {

    result=pass

    if rpm -q krb5-workstation | grep 'not installed' >/dev/null 2>&1\
        && rpm -q vsftp | grep 'not installed' >/dev/null 2>&1 ; then
        if grep ^ftp /etc/passwd >/dev/null 2>&1 ; then
            result=fail
        fi
    fi
        
    printResult "V-27279" "GEN000290-4" "SV-34578r1_rule" "CAT II" "GEN000290-4" "$result"
}

GEN000290-4



function GEN000300 () {

    result=pass

    if ! pwck -r >/dev/null 2>&1 ; then
        result=fail
    fi

    printResult "V-761" "GEN000300" "SV-27063r1_rule" "CAT II" "GEN000300" "$result"
}

GEN000300



function GEN000320 () {

    result=pass

    dupUIDs=`cut -d: -f3 /etc/passwd | uniq -d`
    if [ -n "$dupUIDs" ]; then
        result=fail
    fi

    printResult "V-762" "GEN000320" "SV-27068r1_rule" "CAT II" "GEN000320" "$result"
}

GEN000320



function GEN000380 () {

    result=pass

    if ! pwck -r >/dev/null 2>&1 ; then
        result=fail
    fi

    printResult "V-781" "GEN000380" "SV-27072r1_rule" "CAT II" "GEN000380" "$result"
}

GEN000380



function GEN000440 () {

    result=pass

    if [ -f /var/log/wtmp ]; then
        if [ `last -R | wc -l` -le 2 ]; then
            result=fail
        fi
    else
        result=fail
    fi

    if [ -f /var/log/btmp ]; then
        if [ `lastb -R | wc -l` -le 2 ]; then
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-765" "GEN000440" "SV-27178r1_rule" "CAT II" "GEN000440" "$result"
}

GEN000440



function GEN000450 () {

    result=pass
    foundUncommented=false
    while read line ; do
        maxloginLine=`echo $line | grep maxlogins 2>/dev/null`
        if [ $? -eq 0 ]; then  # found a match
            # see if line is commented out
            checkCommented=`echo "$maxloginLine" | sed 's/^[[:space:]]*#.*$//'`
            if [ -n "$checkCommented" ]; then # line was not commented out
                foundUncommented=true
                maxlogins=`echo "$maxloginLine" | awk '{print $4}'`
                if [ "$maxlogins" -gt 10 ]; then
                    result=fail
                fi
            fi
        fi
    done < /etc/security/limits.conf

    if [ "$result" == "pass" -a  "$foundUncommented" == "false" ]; then
        result=fail
    fi
        
    printResult "V-22298" "GEN000450" "SV-37182r1_rule" "CAT II" "GEN000450" "$result"
}

GEN000450



function GEN000452 () {

    result=pass
    sshResult=pass
    pamResult=pass

    # check the /etc/ssh/sshd_config file
    while read line
    do
        # see if line is uncommented
        if echo "$line" | grep -v "^[[:space:]]*#" >/dev/null 2>&1 ; then
            value=`echo "$line" | awk '{print $2}'`
            if [ "$value" != "yes" ]; then
                sshResult=fail
            fi
        fi
    done << EOF
$(cat /etc/ssh/sshd_config | grep PrintLastLog 2>/dev/null)
EOF

    # check the /etc/pam.d/sshd file
    while read line
    do
        # see if line is uncommented
        if echo "$line" | grep -v "^[[:space:]]*#" >/dev/null 2>&1 ; then
            if echo "$line" | grep silent >/dev/null 2>&1; then
                pamResult=fail
            fi
        fi
    done << EOF
$(cat /etc/pam.d/sshd | grep pam_lastlog 2>/dev/null)
EOF

    if [ "$sshResult" == "fail" -a "$pamResult" == "fail" ]; then
        result=fail
    fi
    
    printResult "V-22299" "GEN000452" "SV-37187r1_rule" "CAT II" "GEN000452" "$result"
}

GEN000452



function GEN000460 () {

    result=pass

    if ! grep "^auth.*required.*pam_tally2.so.*deny=3" /etc/pam.d/system-auth >/dev/null 2>&1 ; then
        result=fail
    else
        firstSuffLineNum=`awk '/^auth.*sufficient/ {print FNR}' /etc/pam.d/system-auth`
        denyLineNum=`awk '/^auth.*required.*pam_tally2.so.*deny=3/ {print FNR}' /etc/pam.d/system-auth`
        if [ -n "$firstSuffLineNum" ]; then
            if [ "$firstSuffLineNum" -lt "$denyLineNum" ]; then
                result=fail
            fi
        fi
    fi

    printResult "V-766" "GEN000460" "SV-37203r1_rule" "CAT II" "GEN000460" "$result"
}

GEN000460



function GEN000480 () {

    result=pass

    # check for FAIL_DELAY
    delayline=`grep "^FAIL_DELAY" /etc/login.defs 2>/dev/null`
    if [ -n "$delayline" ]; then
        delay=`echo "$delayline" | awk '{print $2}'`
        if [ -n "$delay" ]; then
            if [ "$delay" -lt 4 ]; then
                result=fail
            fi
        else
            result=fail
        fi
    else
        result=fail
    fi

    # check for pam_faildelay
    if [ "$result" == "pass" ]; then
        if ! grep pam_faildely /etc/pam.d/system-auth* >/dev/null 2>&1 ; then
            result=fail
        fi
    fi

    if [ "$result" == "pass" ]; then
        if grep pam_faildely /etc/pam.d/system-auth-ac >/dev/null 2>&1\
           && ! grep pam_faildely /etc/pam.d/system-auth >/dev/null 2>&1 ; then
            if ! grep system-auth-ac /etc/pam.d/system-auth >/dev/null 2>&1 ; then
                result=fail
            fi
        fi
    fi

    printResult "V-768" "GEN000480" "SV-37213r1_rule" "CAT II" "GEN000480" "$result"
}

GEN000480



function GEN000500 () {

    result=pass

    active=`gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/idle_activation_enabled 2>/dev/null`

    if [ -n "$active" ]; then
        if ! echo "$active" | grep "true" >/dev/null 2>&1 ; then
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-4083" "GEN000500" "SV-29796r1_rule" "CAT II" "GEN000500" "$result"
}

GEN000500



function GEN000500-2 () {

    result=pass

    delay=`gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/idle_delay 2>/dev/null`

    if [ -n "$delay" ]; then
        if [ "$delay" -gt 15 ]; then
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-27283" "GEN000500-2" "SV-34582r1_rule" "CAT II" "GEN000500-2" "$result"
}

GEN000500-2



function GEN000500-3 () {

    result=pass

    lock=`gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/lock_enabled 2>/dev/null`

    if [ -n "$lock" ]; then
        if ! echo "$lock" | grep "true" >/dev/null 2>&1 ; then
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-27284" "GEN000500-3" "SV-34583r1_rule" "CAT II" "GEN000500-3" "$result"
}

GEN000500-3



function GEN000540 () {

    result=pass

    if cat /etc/shadow | cut -d':' -f4 | grep -v 1 >/dev/null 2>&1 ; then
        result=fail
    fi

    printResult "V-1032" "GEN000540" "SV-37239r1_rule" "CAT II" "GEN000540" "$result"
}

GEN000540



function GEN000580 () {

    result=pass

    minlen=`grep pam_cracklib.so /etc/pam.d/system-auth >/dev/null 2>&1\
            | sed -e 's/^.*\(minlen=[0-9]*\).*$/\1/'`
    if echo "$minlen" | grep ^minlen >/dev/null 2>&1 ; then
        length=`echo "$minlen" | cut -d'=' -f2`
        if [ -n "$length" ]; then
            if [ "$length" -lt 14 ]; then
                result=fail
            fi
        else
            result=fail
        fi
    else
        result=fail
    fi
        
    printResult "V-11947" "GEN000580" "SV-37260r1_rule" "CAT II" "GEN000580" "$result"
}

GEN000580



function GEN000585 () {

    result=pass

    # check the /etc/passwd file for bad hashes
    while read line
    do
        pw=`echo "$line" | cut -d':' -f2`
        if [ "$pw" != "x" ]; then
            firstChar=`echo "$pw" | cut -c1`
            if [ "$firstChar" != "_" -a "$firstChar" != "$" ]; then
                result=fail
                break
            fi
        fi
    done < /etc/passwd

    if [ "$result" == "fail" ]; then
        printResult "V-22302" "GEN000585" "SV-37261r1_rule" "CAT II" "GEN000585" "$result"
        return
    fi

    # check the /etc/shadow file for bad hashes
    while read line
    do
        pw=`echo "$line" | cut -d':' -f2`
        firstChar=`echo "$pw" | cut -c1`
        firstChar="x""$firstChar"
        if [ "$firstChar" != 'x*' -a "$firstChar" != 'x!' ]; then
            if [ "$firstChar" != 'x_' -a "$firstChar" != 'x$' ]; then
                result=fail
                break
            fi
        fi
    done < /etc/shadow

    printResult "V-22302" "GEN000585" "SV-37261r1_rule" "CAT II" "GEN000585" "$result"
}

GEN000585



function GEN000590 () {

    result=pass

    if ! egrep "^password.*pam_unix\.so.*sha(256|512).*$" /etc/pam.d/system-auth-ac\
         >/dev/null 2>&1 ; then
        result=fail
    fi

    printResult "V-22303" "GEN000590" "SV-26313r1_rule" "CAT II" "GEN000590" "$result"
}

GEN000590



function GEN000595 () {

    result=pass

    # check the /etc/passwd file for bad hashes
    while read line
    do
        pw=`echo "$line" | cut -d':' -f2`
        if [ "$pw" != "x" ]; then
            firstThreeChar=`echo "$pw" | cut -c1-3`
            if [ "$firstThreeChar" != "\$5$" -a "$firstThreeChar" != "\$6$" ]; then
                result=fail
                break
            fi
        fi
    done < /etc/passwd

    if [ "$result" == "fail" ]; then
        printResult "V-22304" "GEN000595" "SV-26316r1_rule" "CAT II" "GEN000595" "$result"
        return
    fi

    # check the /etc/shadow file for bad hashes
    while read line
    do
        pw=`echo "$line" | cut -d':' -f2`
        firstThreeChar=`echo "$pw" | cut -c1-3`
        firstChar="x"`echo "$firstThreeChar" | cut -c1`
        if [ "$firstChar" != 'x*' -a "$firstChar" != 'x!' ]; then
            if [ "$firstThreeChar" != "\$5$" -a "$firstThreeChar" != "\$6$" ]; then
                result=fail
                break
            fi
        fi
    done < /etc/shadow

    printResult "V-22304" "GEN000595" "SV-26316r1_rule" "CAT II" "GEN000595" "$result"
}

GEN000595




function GEN000600 () {

    result=pass

    ucredit=`egrep "^password.*pam_cracklib.so" /etc/pam.d/system-auth >/dev/null 2>&1\
            | sed -e 's/^.*\(ucredit=-\?[0-9]*\).*$/\1/'`
    if echo "$ucredit" | grep ^ucredit >/dev/null 2>&1 ; then
        value=`echo "$ucredit" | cut -d'=' -f2`
        if [ -n "$value" ]; then
            if [ "$value" -ne -1 ]; then
                result=fail
            fi
        else
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-11948" "GEN000600" "SV-41826r1_rule" "CAT II" "GEN000600" "$result"
}

GEN000600



function GEN000610 () {

    result=pass

    lcredit=`egrep "^password.*pam_cracklib.so" /etc/pam.d/system-auth >/dev/null 2>&1\
            | sed -e 's/^.*\(lcredit=-\?[0-9]*\).*$/\1/'`
    if echo "$lcredit" | grep ^lcredit >/dev/null 2>&1 ; then
        value=`echo "$lcredit" | cut -d'=' -f2`
        if [ -n "$value" ]; then
            if [ "$value" -ne -1 ]; then
                result=fail
            fi
        else
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-22305" "GEN000610" "SV-26321r1_rule" "CAT II" "GEN000610" "$result"
}

GEN000610


function GEN000620 () {

    result=pass

    dcredit=`egrep "^password.*pam_cracklib.so" /etc/pam.d/system-auth >/dev/null 2>&1\
            | sed -e 's/^.*\(dcredit=-\?[0-9]*\).*$/\1/'`
    if echo "$dcredit" | grep ^dcredit >/dev/null 2>&1 ; then
        value=`echo "$dcredit" | cut -d'=' -f2`
        if [ -n "$value" ]; then
            if [ "$value" -ne -1 ]; then
                result=fail
            fi
        else
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-11972" "GEN000620" "SV-37281r1_rule" "CAT II" "GEN000620" "$result"
}

GEN000620



function GEN000640 () {

    result=pass

    ocredit=`egrep "^password.*pam_cracklib.so" /etc/pam.d/system-auth >/dev/null 2>&1\
            | sed -e 's/^.*\(ocredit=-\?[0-9]*\).*$/\1/'`
    if echo "$ocredit" | grep ^ocredit >/dev/null 2>&1 ; then
        value=`echo "$ocredit" | cut -d'=' -f2`
        if [ -n "$value" ]; then
            if [ "$value" -ne -1 ]; then
                result=fail
            fi
        else
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-11973" "GEN000640" "SV-37287r1_rule" "CAT II" "GEN000640" "$result"
}

GEN000640



function GEN000680 () {

    result=pass

    maxrepeat=`egrep "^password.*pam_cracklib.so" /etc/pam.d/system-auth >/dev/null 2>&1\
            | sed -e 's/^.*\(maxrepeat=[0-9]*\).*$/\1/'`
    if echo "$maxrepeat" | grep ^maxrepeat >/dev/null 2>&1 ; then
        value=`echo "$maxrepeat" | cut -d'=' -f2`
        if [ -n "$value" ]; then
            if [ "$value" -gt 3 ]; then
                result=fail
            fi
        else
            result=fail
        fi
    else
        result=fail
    fi

    printResult "V-11975" "GEN000680" "SV-37294r1_rule" "CAT II" "GEN000680" "$result"
}

GEN000680




function GEN000700 () {

    result=pass

    # check the /etc/shadow file for password lifespan
    while read line
    do
        lifespan=`echo "$line" | cut -d':' -f5`
        if [ "$lifespan" -eq 0 -o "$lifespan" -gt 60 ]; then
            result=fail
            break
        fi
    done < /etc/shadow

    printResult "V-11976" "GEN000700" "SV-37298r1_rule" "CAT II" "GEN000700" "$result"
}

GEN000700




function GEN000750 () {

    result=pass

    difok=`egrep "^password.*pam_cracklib.so" /etc/pam.d/system-auth >/dev/null 2>&1\
            | sed -e 's/^.*\(difok=[0-9]*\).*$/\1/'`
    if echo "$difok" | grep ^difok >/dev/null 2>&1 ; then
        value=`echo "$difok" | cut -d'=' -f2`
        if [ -n "$value" ]; then
            if [ "$value" -lt 4 ]; then
                result=fail
            fi
        else
            result=fail
        fi
    else
        result=fail
    fi

    if [ "$result" == "pass" ]; then
        if ! egrep "^password[[:space:]]+include[[:space:]]+system-auth$" /etc/pam.d/passwd\
           >/dev/null 2>&1 ; then
            result=fail
        fi
    fi

    printResult "V-22306" "GEN000750" "SV-37304r1_rule" "CAT II" "GEN000750" "$result"
}

GEN000750



function GEN000790 () {

    result=pass

    if ! grep "pam_cracklib" /etc/pam.d/system-auth* >/dev/null 2>&1 ; then
        result=fail
    fi

    if [ "$result" == "pass" ]; then
        if grep "pam_cracklib" /etc/pam.d/system-auth-ac >/dev/null 2>&1\
           && ! grep "pam_cracklib" /etc/pam.d/system-auth >/dev/null 2>&1 ; then
            if ! grep "system-auth-ac" /etc/pam.d/system-auth ; then
                result=fail
            fi 
        fi
    fi

    if [ "$result" == "pass" ]; then
        if ! egrep "^password[[:space:]]+include[[:space:]]+system-auth$" /etc/pam.d/passwd\
           >/dev/null 2>&1 ; then
            result=fail
        fi
    fi

    printResult "V-22307" "GEN000790" "SV-37318r1_rule" "CAT II" "GEN000790" "$result"
}

GEN000790




function GEN000800 () {

    result=pass

    if [ ! -f /etc/security/opasswd ]; then
        result=fail;
    fi

    if [ "$result" == "pass" ]; then
        remember=`egrep "^password.*pam_unix.so" /etc/pam.d/system-auth >/dev/null 2>&1\
                | sed -e 's/^.*\(remember=[0-9]*\).*$/\1/'`
        if echo "$remember" | grep ^remember >/dev/null 2>&1 ; then
            value=`echo "$remember" | cut -d'=' -f2`
            if [ -n "$value" ]; then
                if [ "$value" -lt 5 ]; then
                    result=fail
                fi
            else
                result=fail
            fi
        else
            result=fail
        fi
    fi

    if [ "$result" == "pass" ]; then
        if grep system-auth-ac /etc/pam.d/* >/dev/null 2>&1 ; then
            remember=`egrep "^password.*pam_unix.so" /etc/pam.d/system-auth-ac >/dev/null 2>&1\
                    | sed -e 's/^.*\(remember=[0-9]*\).*$/\1/'`
            if echo "$remember" | grep ^remember >/dev/null 2>&1 ; then
                value=`echo "$remember" | cut -d'=' -f2`
                if [ -n "$value" ]; then
                    if [ "$value" -lt 5 ]; then
                        result=fail
                    fi
                else
                    result=fail
                fi
            else
                result=fail
            fi
        fi
    fi

    printResult "V-4084" "GEN000800" "SV-37323r1_rule" "CAT II" "GEN000800" "$result"
}

GEN000800



function GEN000850 () {

    result=pass

    if ! grep pam_wheel /etc/pam.d/su >/dev/null 2>&1 ; then
        result=fail
    fi

    if [ "$result" == "pass" ]; then
        while read line
        do
            if echo "$line" | grep pam_wheel >/dev/null 2>&1 ; then
                firstchar=`echo "$line" | awk '{print $1}' | cut -c1`
                if [ "$firstchar" == "#" ]; then
                    result=fail
                    break
                fi
            fi
        done < /etc/pam.d/su
    fi

    printResult "V-22308" "GEN000850" "SV-37345r1_rule" "CAT II" "GEN000850" "$result"
}

GEN000850

