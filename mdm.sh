csrutil authenticated-root disable
diskutil mount /Volumes/Untitled
Mount -uv /Volumes/Untitled
cd /Volumes/Untitled/System/Library/LaunchAgents
mkdir tmp
mv com.apple.ManagedClientAgent.* tmp/
mv com.apple.mdmclient.* tmp/
cd ../LaunchDaemons
mkdir tmp
mv com.apple.ManagedClient.* tmp/
mv com.apple.mdmclient.* tmp/
bless --folder /Volumes/Untitled/System/Library/CoreServices --bootefi --create-snapshot
