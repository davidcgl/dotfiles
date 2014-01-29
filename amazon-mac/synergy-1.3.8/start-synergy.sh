SYNERGY_HOME=${HOME}/synergy-1.3.8
SYNERGY_LOG=${HOME}/synergy.log
SYNERGY_CLIENT=$SYNERGY_HOME/synergyc
LINUX_DESKTOP=ua41f727bf453525c3f43.ant.amazon.com

# Kill any previous synergys ssh tunnels, and local synergyc processes
ps auxwww|egrep -e "[s]sh.*start-synergys"|awk '{print $2}'|xargs kill
killall synergyc || echo "No synergy clients already running";

# Start desktop synergy server via ssh tunnel, forward the port locally
ssh -nf -L 24800:127.0.0.1:24800 $LINUX_DESKTOP -- '~/.synergy/start-synergys'
echo "Waiting for Server to come up before starting client"
sleep 6
echo "Starting Client"
$SYNERGY_CLIENT -d INFO -f 127.0.0.1 > $SYNERGY_LOG 2>&1 &
echo "Finished"
