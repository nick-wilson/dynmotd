_DYNMOTD_MINUID=${MINUID:-10000}
if [ $UID -gt $_DYNMOTD_MINUID ] ; then
 if [ ${_DYNMOTD:-0} -eq 0 ] ; then
  if [ ! -e "$HOME/.hushlogin" ] ; then
   tty > /dev/null 2>&1 && dynmotd 1>&2
  fi
 fi
fi
unset _DYNMOTD_MINUID
_DYNMOTD=1 ; export _DYNMOTD
