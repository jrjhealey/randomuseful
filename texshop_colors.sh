#!/bin/bash
# Script to change texshop colours.

calc(){
IFS=: read -r R G B <<< "$1"
 r=$(bc -l <<< "$R/255")
 b=$(bc -l <<< "$G/255")
 g=$(bc -l <<< "$B/255")

echo "R $R converts to: $r"
echo "G $G converts to: $g"
echo "B $B converts to: $b"
}

#Themes:
# Green on black, matrix style. (Just for fun, not actually very useful!)
matrix(){
echo "So you took the red pill?.."
defaults write TeXShop background_R 0
defaults write TeXShop background_G 0
defaults write TeXShop background_B 0

defaults write TeXShop foreground_R 0
defaults write TeXShop foreground_G 1
defaults write TeXShop foreground_B 0

defaults write TeXShop commentred 0
defaults write TeXShop commentgreen 0.9
defaults write TeXShop commentblue 0

defaults write TeXShop commandred 0
defaults write TeXShop commandgreen .8
defaults write TeXShop commandblue 0

defaults write TeXShop indexred 0
defaults write TeXShop indexgreen 0.7
defaults write TeXShop indexblue 0

defaults write TeXShop markerred 0.0
defaults write TeXShop markergreen 0.6
defaults write TeXShop markerblue 0

defaults write TeXShop insertionpoint_R 0
defaults write TeXShop insertionpoint_G 0.5
defaults write TeXShop insertionpoint_B 0

}

# Light background, red text

solarized2(){
  echo "Setting solarized2 theme."
defaults write TeXShop background_R 0.1315524628925428
defaults write TeXShop background_G 0.1514611456578815
defaults write TeXShop background_B 0.1584508659361748

defaults write TeXShop foreground_R 0.7675526591846704
defaults write TeXShop foreground_G 0.7802913168283133
defaults write TeXShop foreground_B 0.7848272996704031

defaults write TeXShop commentred 0.456989727381416
defaults write TeXShop commentgreen 0.4686302345468037
defaults write TeXShop commentblue 0.47277872487402767

defaults write TeXShop commandred 0.5152778241117596
defaults write TeXShop commandgreen 0.7287980512108025
defaults write TeXShop commandblue 0.3277610086866684

defaults write TeXShop indexred 1.0
defaults write TeXShop indexgreen 0.44605507023517926
defaults write TeXShop indexblue 0.6444164367288312

defaults write TeXShop markerred 0.0
defaults write TeXShop markergreen 0.6473821768286941
defaults write TeXShop markerblue 0.5877138942034104

defaults write TeXShop insertionpoint_R 0.9329004893618941
defaults write TeXShop insertionpoint_G 0.9460941572562335
defaults write TeXShop insertionpoint_B 0.950788625916625
}


pale(){
  echo "Setting pale theme."
defaults write TeXShop insertionpoint_R 0.00
defaults write TeXShop insertionpoint_G 0.00
defaults write TeXShop insertionpoint_B 0.00

defaults write TeXShop markerred 0.02
defaults write TeXShop markergreen 0.51
defaults write TeXShop markerblue 0.13

defaults write TeXShop background_R 0.99;
defaults write TeXShop background_G 0.96;
defaults write TeXShop background_B 0.89;

# commands = solarized red = 220  50  47
defaults write TeXShop commandred 0.86;
defaults write TeXShop commandgreen 0.196;
defaults write TeXShop commandblue 0.184;

# comments = solarized base1 = 147 161 161
defaults write TeXShop commentred 0.58;
defaults write TeXShop commentgreen 0.63;
defaults write TeXShop commentblue 0.63;

# foreground = solarized base00 = 101 123 131
defaults write TeXShop foreground_R 0.40;
defaults write TeXShop foreground_G 0.48;
defaults write TeXShop foreground_B 0.51;

# index = solarized magenta = 211 54 130
defaults write TeXShop indexred 0.83;
defaults write TeXShop indexgreen 0.21;
defaults write TeXShop indexblue 0.51;
}

solarized_light(){
    echo "Setting solarized_light theme."

# background = solarized base3 = 253 246 227
defaults write TeXShop background_R 0.99
defaults write TeXShop background_G 0.96
defaults write TeXShop background_B 0.89

# commands = solarized red = 220  50  47
defaults write TeXShop commandred 0.86
defaults write TeXShop commandgreen 0.196
defaults write TeXShop commandblue 0.184

# comments = solarized base1 = 147 161 161
defaults write TeXShop commentred 0.58
defaults write TeXShop commentgreen 0.63
defaults write TeXShop commentblue 0.63

# foreground = solarized base00 = 101 123 131
defaults write TeXShop foreground_R 0.40
defaults write TeXShop foreground_G 0.48
defaults write TeXShop foreground_B 0.51

# index = solarized magenta = 211  54 130
defaults write TeXShop indexred 0.83
defaults write TeXShop indexgreen 0.21
defaults write TeXShop indexblue 0.51

# marker = solarized cyan = 42 161 152
defaults write TeXShop markerred 0.165
defaults write TeXShop markergreen 0.63
defaults write TeXShop markerblue 0.596

# insertionpoint = solarized base00 = 101 123 131
defaults write TeXShop insertionpoint_R 0.40
defaults write TeXShop insertionpoint_G 0.48
defaults write TeXShop insertionpoint_B 0.51
}

solarized_dark(){
    echo "Setting solarized_dark theme."

# solarized dark color scheme

# background = solarized base03 = 0  43  54
defaults write TeXShop background_R 0.269
defaults write TeXShop background_G 0.269
defaults write TeXShop background_B 0.269

# commands = solarized red = 220  50  47
defaults write TeXShop commandred 0.86
defaults write TeXShop commandgreen 0.196
defaults write TeXShop commandblue 0.184

# comments = solarized base01 = 88 110 117
defaults write TeXShop commentred 0.55
defaults write TeXShop commentgreen 0.53
defaults write TeXShop commentblue 0.559

# foreground = solarized base0 = 131 148 150
defaults write TeXShop foreground_R 0.99
defaults write TeXShop foreground_G 0.99
defaults write TeXShop foreground_B 0.99

# index = solarized magenta = 211  54 130
defaults write TeXShop indexred 0.83
defaults write TeXShop indexgreen 0.21
defaults write TeXShop indexblue 0.51

# marker = solarized cyan = 42 161 152
defaults write TeXShop markerred 0.165
defaults write TeXShop markergreen 0.63
defaults write TeXShop markerblue 0.596

# insertionpoint = solarized base0 = 131 148 150
defaults write TeXShop insertionpoint_R 0.514
defaults write TeXShop insertionpoint_G 0.580
defaults write TeXShop insertionpoint_B 0.589

}

default(){
  echo "Reverting to TexShop default colours."

defaults write TeXShop background_R 1.0
defaults write TeXShop background_G 1.0
defaults write TeXShop background_B 1.0

defaults write TeXShop commandred 0.0
defaults write TeXShop commandgreen 0.0
defaults write TeXShop commandblue 1.0

defaults write TeXShop commentred 1.0
defaults write TeXShop commentgreen 0.0
defaults write TeXShop commentblue 0.0

defaults write TeXShop foreground_R 0.00
defaults write TeXShop foreground_G 0.00
defaults write TeXShop foreground_B 0.00

defaults write TeXShop indexred 1.00
defaults write TeXShop indexgreen 1.00
defaults write TeXShop indexblue 0.00

defaults write TeXShop insertionpoint_R 0.00
defaults write TeXShop insertionpoint_G 0.00
defaults write TeXShop insertionpoint_B 0.00

defaults write TeXShop markerred 0.02
defaults write TeXShop markergreen 0.51
defaults write TeXShop markerblue 0.13
}


usage()
{
cat << EOF
usage: $0 -t|--theme <theme_name>
       $0 -c|--calculate R:G:B

This script alters texshop source editor colours. By explicitly
specifying RGB values, you have almost limitless customisation.

TexShop will need to be restarted between theme changes for them
to take effect.

New themes can be added manually and the RGB values tweaked.
They must be added as named funtions at the start of this script,
so that they are read before they are called.

OPTIONS:
   -h | --help     	Show this message
   -c | --calculate	Convert an RGB value to a 0-1 scale (e.g.
			Hex FF9900 (orange) = RGB(255,153,0) = 1:0.6:0)
			Provide a colon delimited string as in 
			'R:G:B' for conversion.
   -t | --theme         Specify which theme to apply. Choose from:

THEMES:
 - "pale"               Pale tan background, grey/red text.
 - "solarzied_light"    High contrast, light background.
 - "solarized_dark"     High contrast, dark background.
 - "solarzed2"		An alternative dark solarized theme.
 - "default"            Reset to TexShop default colour theme.
 - "matrix"		Fun green and black style. Not actually that functional!
EOF
}

for arg in "$@"; do
  shift
  case "$arg" in
                "--help")
                set -- "$@" "-h"
                ;;
                "--theme")
                set -- "$@" "-t"
                ;;
		"--calculate")
		set -- "$@" "-c"
		;;
                *)
                set -- "$@" "$arg"
  esac
done

# getopts assigns the arguments to variables
while getopts "ht:c:" OPTION ;do
  case $OPTION in
    t)
    theme=$OPTARG
    ;;
    c)
    vals=$OPTARG
    ;;
    h)
    usage
    exit
    ;;
  esac
done

if [[ ! -z "$theme" ]] ; then
  "$theme"
  echo "Ensure TeXShop is restarted for the changes to take effect."

  elif [[ ! -z "$vals" ]] ; then
   calc "$vals"

else
  echo "No theme/options provided. Exiting."
  echo "==================================="
  usage
  exit 1
fi
