#!/bin/bash

cities=($*)
temperatures=()

echo ${cities[@]}

for city in ${cities[@]};
do
    raw_temp=$(./weather.sh -s $city)
    temp=`echo $raw_temp | sed -e "s/+//g" -e "s/ /_/g"`
    temperatures+=($temp)
done

for temperature in ${temperatures[@]} ;
do 
    temperature=$(echo ${temperatures[@]} | sed "s/_/ /")
    echo $temperature
done

$(echo ${temperatures[@]} > temperatures.txt)


