while IFS= read -r line
do
#	ls "$line"
#	sleep 1
#	mkdir "$line"/Season\ 1/
	mv "$line"/*.mp4  "$line"/*.ass  "$line"/*.mkv  "$line"/*.avi  "$line"/*.flv "$line"/*.FLV   "$line"/*.a7 "$line"/Season\ 1/ 2>/dev/null
done < txt
