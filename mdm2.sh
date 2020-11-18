mount -uw "/Volumes/Macintosh HD/System/Library";
cd "/Volumes/Macintosh HD/System/Library";
mkdir LaunchDaemons.disabled LaunchAgents.disabled;
mv LaunchDaemons/com.apple.ManagedClient* LaunchDaemons.disabled/;
mv LaunchAgents/com.apple.ManagedClient* LaunchAgents.disabled/
cd ../../etc;
echo "0.0.0.0 albert.apple.com" >> hosts;
echo "0.0.0.0 iprofiles.apple.com" >> hosts;
echo "0.0.0.0 mdmenrollment.apple.com" >> hosts;
echo "0.0.0.0 deviceenrollment.apple.com" >> hosts;
echo "0.0.0.0 gdmf.apple.com" >> hosts;
csrutil enable;
