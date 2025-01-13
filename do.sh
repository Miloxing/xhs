path=/root/b/d/xhs
while true;do
	find $path -type f -size -4k -exec rm -f {} \;
	rclone move $path 1f:milo/xhs -P
	sleep 1800
done
