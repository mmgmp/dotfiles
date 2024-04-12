#!/bin/bash

# Lista de redes wifi disponibles
wifi_list=$(nmcli --fields "SSID" device wifi list | sed 's/ //g' | sed 1d)

# Estado del Wifi
if [[ $(nmcli -fields WIFI g | sed 's/ //g' | sed 1d) = "activado" ]]; then
        check="-- DESACTIVAR WIFI --"
else
        check="-- ACTIVAR WIFI --"
fi

chosen_network=$(echo -e "$check""\n""$wifi_list" | tofi --prompt-text Redes' 'Wifi:' ')

if [[ "$chosen_network" = "" ]]; then
	exit

elif [[ "$chosen_network" = "-- DESACTIVAR WIFI --" ]]; then
	nmcli radio wifi off

elif [[ "$chosen_network" = "-- ACTIVAR WIFI --" ]]; then
	nmcli radio wifi on

else
	passw=$(echo "" | tofi --prompt-text Clave:' ')
	nmcli device wifi connect "$chosen_network" password "$passw"
fi
