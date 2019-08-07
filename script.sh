#! /bin/bash
file=$1
cd $file
ls -lR | sort -k 5nr | head -n 10 | sed -e 's/\s\+/ /g' > rec.txt
while IFS= read -r line; do
  echo "$line" > h.txt
  cat h.txt
  x=`cut -d" " -f 8 h.txt`
  y=`cut --complement -d" " -f 1-8 h.txt`
  if [[ "$x" == "2019" ]] || [[ "$x" =~ ":" ]]; then
  	continue
  else
  	echo "this file is to be deleted"
  	# rm $y
  fi
  # echo $x
  # echo $y
  rm h.txt
done < "rec.txt"
rm rec.txt
# echo $file