
#### //skynet/3rd/jemalloc $2=skynet/3rd/jemalloc $3=/www/src/AAA/TestSkynet
if [ "${1}" = "bin" ]; then
  echo "POST BUILD LIB: $2" 
elif [ "${1}" = "lib" ]; then
 echo "POST BUILD BIN: $2" 
fi

#### //skynet/skynet-src $2=skynet/skynet-src $3=/www/src/AAA/TestSkynet
if [ "${1}" = "bin" ]; then
  echo "POST BUILD LIB: $2" 
elif [ "${1}" = "lib" ]; then
 echo "POST BUILD BIN: $2" 
fi
