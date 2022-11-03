if test -f ~/app/dump.hprof; then
   rm ~/app/dump.hprof
fi
./jattach  $(ps aux | grep java | sed '2,3d' | awk '{print $2}') dumpheap dump.hprof
chmod 644 ~/app/dump.hprof
gzip ~/app/dump.hprof
