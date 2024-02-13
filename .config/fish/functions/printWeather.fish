function printWeather --wraps=rainy --description 'alias printWeather=rainy'
    bash -c 'rainy 2> /dev/null > /tmp/rainy.txt; cp /tmp/rainy.txt /tmp/rainy.txt~' & disown
    test -e /tmp/rainy.txt~ && /usr/bin/cat /tmp/rainy.txt~ | lolcat
end
