#!/bin/bash

read -p 'Hello, input path to your libraries folder. (default -> .minecraft/libraries): ' librariesInput
read -p 'echo Now, input path to your destination folder: ' destination

cp -i $(find $librariesInput -name "*.jar") $destination
