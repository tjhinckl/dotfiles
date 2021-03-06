#!/usr/intel/bin/bash
#
# $Id: modpath,v 1.11 2006/03/02 21:16:42 steved Exp $
# $Revision: 1.11 $
#
# REVISIONS:
# 04/30/03 (steved) import from fm GENenv, changed `path` to "here document"
# 11/18/92 (KK) Adapted from EPGcad; modified for GENenv
# 02/06/92 (CW)	Original by Craig Webber, EPG.
#
# NB: This script must be sourced from the shell; it is not a stand-alone
#     command that can be executed.  If you want to use modpath within
#     your own shell scripts, you need to have the modpath alias or
#     mimic its behavior e.g.:
#
#        set modpath = ( -q -f /my/path/bin )
#        source $EC_ENV_ROOT/bin/modpath
#        unset modpath
#
#     The bourne shell equivalent is available $EC_ENV_ROOT/bin/modpath.sh
#
set tmpQUIET=0
set tmpDEBUG=0
set tmpFIND=1
set tmpNOREQUIRE=0
set tmpDELETE=0
set tmpNTH=98
set tmpLIST=""
set tmpPATH=""
set tmpBA=before
set tmpVAR=PATH
set tmpKEEP=0
set tmpFILE=""
###############################################################################
if (! $?modpath) then
	echo ERROR: \$modpath isn\'t set
    return
else
  # force into shell var in case it was just in env (e.g. from sh wrapper)
  modpath=$modpath
  #echo "modpath === $modpath ... $#modpath ..."
  #set verbose
endif
###############################################################################
while ($#modpath)
  switch ("$modpath[1]")
    case -D:
	set tmpDEBUG=1
	shift modpath
	breaksw
    case -o:
	shift modpath
	if ($#modpath == 0) goto HELP
	set tmpFILE = "$modpath[1]"
	shift modpath
	breaksw
    case -h:
	goto HELP
	breaksw
    case -d*:
	set tmpDELETE=1
	shift modpath
	breaksw
   case -f:
	set tmpFIND=0
	shift modpath
	breaksw
    case -q:
	set tmpQUIET=1
	shift modpath
	breaksw
    case -k:
	set tmpKEEP=1
	breaksw
    case -a:
	set tmpBA=after
    case -b:
	shift modpath
	if ($#modpath == 0) goto HELP
	set tmpNTH = \
	    `/bin/sh | /usr/intel/bin/ggrep -n \^$modpath[1]\$|head -1|awk -F: '{print $1}'` << EOF
IFS=:
for I in \$$tmpVAR
do
  echo "\$I"
done
EOF
	if ($tmpNTH == "") then
	    set tmpNTH=98
	    if ($tmpFIND) then
		echo "	SEARCH DIRECTORY IS NOT IN YOUR ${tmpVAR}: $modpath[1]"
		echo "	DEFAULT...Adding to end"
	    endif
	endif
	if ($tmpBA == after) @ tmpNTH ++
	shift modpath
	breaksw
    case -n:
	shift modpath
	if ($#modpath == 0) goto HELP
	set tmpNTH = "$modpath[1]"
	shift modpath
	breaksw
    case -v:
	set tmpNOREQUIRE=1
	shift modpath
	if ($#modpath == 0) goto HELP
	set tmpVAR = "$modpath[1]"
	shift modpath
	breaksw
    default:
	if ("$modpath[1]" =~ "-"*) goto HELP
	set tmpLIST = ($tmpLIST $modpath[1])
	shift modpath
	breaksw
  endsw
end
if ("$tmpLIST" == "") goto HELP

###############################################################################
if ($tmpDEBUG == 1) then
 echo "tmpFIND	$tmpFIND"
 echo "tmpQUIET	$tmpQUIET"
 echo "tmpDELETE	$tmpDELETE"
 echo "tmpNTH  	$tmpNTH"
 echo "tmpLIST	$tmpLIST"
 echo "tmpPATH	$tmpPATH"
 echo "tmpVAR	$tmpVAR"
endif

# target var may not be set yet
set tmpVarExists = `eval echo '$?'$tmpVAR`
if ( $tmpVarExists ) then
  set tmpPATH=( `eval echo '$'$tmpVAR | sed 's/:/ /g'` )
else
  set tmpPATH=( )
endif
unset tmpVarExists

###############################################################################
if ($tmpDELETE == 1) then
  #---------------------------------------------------------------------------
  if ($tmpDEBUG == 1) echo DELETING
  #if ($tmpQUIET == 0) echo DELETING
  set tmpMATCH=0
  foreach tmpQ ($tmpLIST)
    set P=""
    foreach tmpP ($tmpPATH)
      if ("$tmpP" == "$tmpQ") then
	if ($tmpQUIET == 0) echo "	Removing from "'$'"${tmpVAR}: $tmpQ"
	@ tmpMATCH ++
      else
	set P = ($P $tmpP)
      endif
    end
    set tmpPATH=($P)
  end
  if ($tmpMATCH == 0) then
	if ($tmpFIND == 1) \
		echo "	WARNING:  Nothing deleted from "'$'"$tmpVAR."
  else
	if ($tmpQUIET == 0) \
		echo "	$tmpMATCH items removed from your "'$'"$tmpVAR."
  endif

  #---------------------------------------------------------------------------
else
  #---------------------------------------------------------------------------
  if ($tmpDEBUG == 1) echo ADDING
  #if ($tmpQUIET == 0) echo ADDING
  set tmpMATCH=0
  set P=""
  foreach tmpP ( $tmpPATH )
    @ tmpMATCH ++
    if ($tmpNTH == $tmpMATCH) then
      foreach I ($tmpLIST)
	set tmpDUP=0
	foreach d ($tmpPATH)
	  if ("$I" == "$d") set tmpDUP=1
	end
	if ($tmpDUP == 1) then
	  if ($tmpFIND && $tmpQUIET == 0) echo "	Already in $tmpVAR, not added:  $I"
	else
	  if ($tmpNOREQUIRE || -d "$I") then
	    if ($tmpQUIET == 0) echo "	Adding to field $tmpMATCH in ${tmpVAR}: $I"
            @ tmpMATCH ++
	    set P = ($P $I)
	  else
	    if ($tmpFIND && $tmpQUIET == 0) echo "WARNING:	Can't find directory named:  $I"
	  endif
	endif
      end
    endif
    set P = ($P $tmpP)
  end
  if ("$tmpNTH" > "$tmpMATCH") then
      foreach I ($tmpLIST)
	set tmpDUP=0
	foreach d ($tmpPATH)
	  if ("$I" == "$d") set tmpDUP=1
	end
	if ($tmpDUP == 1) then
	  if ($tmpFIND && $tmpQUIET == 0) echo "	Already in $tmpVAR, not added:  $I"
	else
	  if ($tmpNOREQUIRE || -d "$I") then
	    if ($tmpQUIET == 0) echo "	Adding to "'$'"${tmpVAR}: $I"
	    set P = ($P $I)
	  else
	    if ($tmpFIND && $tmpQUIET == 0) echo "WARNING:	Can't find directory named:  $I"
	  endif
	endif
      end
  endif
  set tmpPATH = ($P)

  #---------------------------------------------------------------------------
endif

###############################################################################
#
# prune duplicates unless -k
#
if ($tmpKEEP == 0) then
  set cleanPATH = ""
  foreach O ($tmpPATH)
    set IN = 0
    foreach N ($cleanPATH)
      if ("$O" == "$N") set IN = 1
    end 
    if ( $IN == 0 ) set cleanPATH = ($cleanPATH $O)
  end
  set tmpPATH = ($cleanPATH)
endif

###############################################################################
if ($tmpDEBUG == 1) then
    echo "NEWPATH:"
    foreach I ($tmpPATH)
	echo "	$I"
    end
endif
###############################################################################
if ("$tmpVAR" == "PATH") then
  set path = ($tmpPATH)
else
  if ($tmpDEBUG == 1) then
    echo setenv $tmpVAR "`echo $tmpPATH | sed 's/ /:/g'`"
  endif
  setenv $tmpVAR "`echo $tmpPATH | sed 's/ /:/g'`"
endif

#drop results in file by bourne shell caller
if ("1$tmpFILE" != "1") then
  /bin/rm -f $tmpFILE
  echo "$tmpVAR=`echo $tmpPATH | sed 's/ /:/g'`" > $tmpFILE
  echo "export $tmpVAR" >> $tmpFILE
endif

###############################################################################
unset tmpQUIET tmpDELETE tmpNTH tmpLIST tmpPATH tmpFIND tmpBA
unset tmpMATCH P I tmpP tmpQ tmpDUP tmpDEBUG tmpFILE
unset modpath tmpVAR tmpNOREQUIRE tmpKEEP
unset cleanPATH IN N O d

###############################################################################
exit 0
###############################################################################
#
#     undocumented option used by modpath.sh wrapper
#     -o <file>  Store the results in <file>
#
HELP:
unset tmpQUIET tmpDELETE tmpNTH tmpLIST tmpPATH tmpFIND tmpBA
unset tmpMATCH P I tmpP tmpQ tmpDUP tmpDEBUG tmpFILE
unset modpath tmpVAR  tmpNOREQUIRE tmpKEEP
unset cleanPATH IN N O d
cat <<EOFhelp

USAGE:  modpath [-h]
	modpath [-q] [-f] [-v VAR] [-n <Nth>] <path>
	modpath [-q] [-f] [-v VAR] [-a <dir>] <path>
	modpath [-q] [-f] [-v VAR] [-b <dir>] <path>
	modpath [-q] [-f] [-v VAR] -del <path>

     -h         help:  Show command syntax.
     -q		Quiet Mode.
     -f		For adding, no warning message if directory doesn't exist.
		For delete, no warning if directory isn't found in \$path.
     -d    	Delete mode.  Remove path component.
     -k    	Keep duplicates.  By default all redundant items are pruned.
     -b	<dir>	Add before directory <dir> in sequence.
     -a	<dir>	Add after directory <dir> in sequence.
     -n <Nth> 	Places the string as the Nth field in the sequence for paths.
     -v <VAR> 	modify environment \$VAR (default \$PATH)
     <path>	The string which represents the directory you want to add
		or delete from the path.  May be more than one word separated
		by spaces.

     NOTE:  The directory WILL NOT be added to your \$path UNLESS it exists
	    (for \$PATH only).
EOFhelp
exit(1)
##############################################################################
