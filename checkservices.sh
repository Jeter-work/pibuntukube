tmpdir=${TMPDIR:-/tmp}/pssh.$$
mkdir -p $tmpdir
count=0
while IFS= read -r userhost; do
	ssh -n -o BatchMode=yes ${userhost} "echo $userhost\n\n;ls -l /usr/lib/systemd/system/k3s-node.service;sudo systemctl status k3s-node.service" > ${tmpdir}/${userhost} 2>&1 &
    count=`expr $count + 1`
done < userhost.lst
while [ $count -gt 0 ]; do
    wait $pids
    count=`expr $count - 1`
done
echo "Output for hosts are in $tmpdir"
