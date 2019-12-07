for entry in "."/*".html"
do
  "../scripts/gtm-patcher.py" $entry
done
for entry in "."/*
do
  if [ -d "${entry}" ] ; then
    for another_file in $entry/*".html"
    do
  	"../scripts/gtm-patcher.py" $another_file
    done  
  fi
done
