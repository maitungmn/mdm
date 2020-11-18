csrutil authenticated-root disable;
diskutil mount /Volumes/Macintosh\ HD;
mount -uv /Volumes/Macintosh\ HD;
cd /Volumes/Macintosh\ HD/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/Macintosh\ HD/System/Library/CoreServices --bootefi --create-snapshot;
cd ../../etc
echo "0.0.0.0 iprofiles.apple.com" >> hosts;
echo "0.0.0.0 mdmenrollment.apple.com" >> hosts;
echo "0.0.0.0 deviceenrollment.apple.com" >> hosts;
echo "0.0.0.0 gdmf.apple.com" >> hosts;
csrutil enable;
reboot;
