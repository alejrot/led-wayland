#! /bin/bash

trap sigusr1_handler SIGUSR1

function sigusr1_handler() {

    if [ $leds_value -eq 1 ]
    then
        leds_value=0
    else 
        leds_value=1
    fi

    echo "\nSIGUSR1 received - LEDs value: $leds_value"
}


led_folder=$1
delay=$2

cd $led_folder

content=`ls`

pattern="input" 

key="scrolllock"

leds_value=1


while :
do

    # every inner folder is tested
    for inner_folder in ${content[*]}
    do

        condition_1=`echo $inner_folder | grep $pattern | wc -l`
        condition_2=`echo $inner_folder | grep $key | wc -l`

        if [ $condition_1 -ge 1 -a $condition_2 -ge 1 ] 
        then

            # composing LED path
            led_path="$led_folder$inner_folder/brightness"
            # echo $led_path

            # if LED exists then it's value is updated
            if test -f $led_path
            then
                sudo echo $leds_value >> $led_path
            fi

        fi

    done

sleep $delay;    
done
