sudo su
kernels=$(grubby --info=ALL | grep kernel | wc -l)
if (( kernels > 1 )); then echo $(grubby --remove-$(grubby --info=ALL | grep kernel | tail -n 1 | sed "s/\"//g")); fi


