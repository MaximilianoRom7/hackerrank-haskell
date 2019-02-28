for file in *.hs
do
	git add $file
	git commit -m "new solution $(echo $file)"
done

