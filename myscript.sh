#!/bin/bash

cities=($*)
temperatures=()

echo $cities

for city in ${cities[@]};
do
    temp=`./weather.sh -s $city`
    temperatures+=($temp)
done

echo $temperatures