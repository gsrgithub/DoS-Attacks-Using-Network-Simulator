BEGIN {
dropped=0;
received=0.1;
calc = 0;
}
{
parameter1=$1
parameter2=$2
parameter3=$3
parameter4=$4
parameter5=$5
parameter6=$6
parameter8=$8
parameter9=$9
parameter10=$10
parameter11=$11
parameter12=$12
if (parameter1=="r" && parameter5=="udp" && parameter4==3 && parameter3==2)
received++;

if (parameter1=="d" && parameter5=="udp" && parameter4==3 && parameter3==2)
dropped++;

calc = dropped/(dropped+received)

#if ((parameter2 > 40 && parameter2 < 60) || parameter2 > 90 ){
#	received=1;
#	dropped=0;
#}

printf("\n%f %f",parameter2,calc);


}
END {
#printf("\n\n\nnumber of pkts received :%d",number_of_received);
}

