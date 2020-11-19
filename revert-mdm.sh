diskutil mount /Volumes/Untitled
Mount -uv /Volumes/Untitled
cd /Volumes/Untitled/System/Library/LaunchAgents
mv tmp/com.apple.ManagedClientAgent.* .
mv tmp/com.apple.mdmclient.* .
cd ../LaunchDaemons
mkdir tmp
mv tmp/com.apple.ManagedClient.* .
mv tmp/com.apple.mdmclient.* .
