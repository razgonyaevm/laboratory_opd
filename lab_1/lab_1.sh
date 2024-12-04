#!/bin/bash

# Задание 1

mkdir lab0
cd lab0
mkdir fraxure4 lileep6 shedinja2
echo -e "Способности Torrent Swift Swim\nSniper" > seadra7
echo -e "Ходы Ancientpower Body\nSlam Defence Curl Earth Power Endeavor Icy Wind Mud-Slap Sleep Talk\nSnore Stealth Rock Superpower" > swinub1
echo -e "Возможности Overland=1\nSurface=8 Underwater=8 Jump=2 Power=2 Intelligence=3 Gilled=0" > tentacool1
cd fraxure4
mkdir ivysaur
echo "Развитые способности Hydration" > vaporeon
echo -e "weight=7.1\nheight=12.0 atk=4 def=3" > weedle
echo -e "Тип покемона WATER\nNONE" > octillery
echo -e "Способности Bite Leer Headbutt Focus Energy Ember\nProtect Dragonbreath Zen Headbutt Scary Face Crunch Dragon Claw\nDouble-Edge" > shelgon
cd ../lileep6
mkdir whirlpede gurdurr gengar krabby victreebel
echo -e "Ходы Body Slam Defence Curl Double-Edge Foul Play\nGiga Drain Rollout Seed Bomb Sleep Talk Snore Spite Synthesis Worry\nSeed" > seedot
cd ../shedinja2
mkdir meganium
echo -e "Возможности Overland=5 Surface=10 Underwater=10\nJump2=0 Power=4 Intelligence=4 Freezer=0 Icestep=0" > dewgong
echo -e "Способности\nGrowl Tackle Mud-Slap Water Gun Bide Foresight Mud Sport Take Down\nWhirlpool Protect Hydro Pump Endeavor" > mudkip
cd ..

----------

# Задание 2

chmod u=rx,g=w,o=r fraxure4
chmod u=rwx,g=rw,o=r lileep6
chmod u=,g=r,o=rw seadra7
chmod u=rwx,g=rwx,o=rwx shedinja2
chmod 444 swinub1
chmod u=rw,g=,o= tentacool1
cd fraxure4
chmod u-rw,o+w vaporeon
chmod 315 ivysaur
chmod 404 weedle
chmod 640 octillery
chmod u=r,g=,o=r shelgon
cd ../lileep6
chmod u-w,g-r seedot
chmod u-r,g+w-x,o-r+w whirlpede
chmod u-w,g+w,o+w-x gurdurr
chmod u-r,g+w-x,o-r gengar
chmod g-r+w,o-r+w krabby
chmod u-r,g+w-x,o-r victreebel
cd ../shedinja2
chmod g-r+w,o-r dewgong
chmod u=rx,g=x,o=wx meganium
chmod 404 mudkip
cd ..

----------

# Задание 3

chmod u+w fraxure4
ln swinub1 fraxure4/shelgonswinub
chmod u-w fraxure4

chmod u+r fraxure4/vaporeon
cat fraxure4/vaporeon fraxure4/shelgon > tentacool1_14
chmod u-r fraxure4/vaporeon

chmod u+w fraxure4
chmod u+r seadra7
cp seadra7 fraxure4/octilleryseadra
chmod u-w fraxure4
chmod u-r seadra7

chmod u+r seadra7
chmod u+r lileep6/whirlpede
cp seadra7 lileep6/whirlpede/
chmod u-r seadra7
chmod u-r lileep6/whirlpede


ln -s fraxure4 Copy_81

chmod u+w fraxure4
ln -s ../seadra7 fraxure4/weedleseadra
chmod u-w fraxure4

chmod u+r fraxure4/vaporeon
chmod u+r fraxure4/ivysaur
chmod u+r fraxure4/weedleseadra
cp -r fraxure4 fraxure4/ivysaur
chmod u-r fraxure4/weedleseadra
chmod u-r fraxure4/vaporeon
chmod u-r fraxure4/ivysaur


----------

# Задание 4

mkdir tmp

echo "Результат выполнения пункта номер 1 будет записан в файл /tmp/file"

cd fraxure4
wc -m weedle octillery shelgon ../lileep6/seedot > ../tmp/file
cd ..
echo -e "\n\n"

echo "Пункт 2"
(ls -Rl | grep 1$ | sort -rnk 2) 2> /dev/null
echo -e "\n\n"

echo "Пункт 3"
for dir in .$(ls -R | grep ":$"); do
for file in $(echo "${dir//://}" | ls -p "$dir" | grep -v "/$"); do
echo "$dir/$file" | grep -E "^.*/m[^/]*$" | xargs cat | sort
done
done
echo -e "\n\n"

echo "Пункт 4"
(cat seadra7 | grep on) 2> tmp/errors
echo -e "\n\n"

echo "Пункт 5"
(cat swinub1 | grep -iv r$) 2>> tmp/errors
echo -e "\n\n"

echo "Пункт 6"
for dir in .$(ls -R | grep ":$" ); do
for file in $(echo "${dir//://}" | ls -p "$dir" | grep -v "/$"); do
echo "$dir/$file" | xargs grep -l she | xargs ls -l | sort -rnk 2
done
done


----------

# Задание 5

rm -f swinub1
chmod u+w fraxure4
rm -f fraxure4/shelgon
rm -f Copy_*
rm -f fraxure4/shelgonswin*
chmod u-w fraxure4

chmod -R u+rw lileep6
rm -r lileep6/whirlpede
rm -r lileep6
