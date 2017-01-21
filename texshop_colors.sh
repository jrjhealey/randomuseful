#!/bin/bash
# Script to change texshop colours.

usage()
{
cat << EOF
usage: $0 theme

This script alters texshop source editor colours. By explicitly
specifying RGB values, you have almost limitless customisation.

OPTIONS:
   -h | --help     	Show this message
   
THEMES:
 - "pale"                   Pale tan background, grey/red text.
 - "solarzied_light"        High contrast, light background.
 - "solarized_dark"         High contrast, dark background.
EOF
}


case "$theme" in
          "pale")      
          pale
          ;;
          "solarized_light")      
          solarized_light
          ;;
           "solarized_dark")
          solarized_dark
          ;; 
          "-h"|"--help")
          usage
          ;;
     *)
          commands
          ;;
esac

pale () {
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

solarized_dark() {
# solarized dark color scheme

# background = solarized base03 = 0  43  54
defaults write TeXShop background_R 0.00
defaults write TeXShop background_G 0.169
defaults write TeXShop background_B 0.212

# commands = solarized red = 220  50  47
defaults write TeXShop commandred 0.86
defaults write TeXShop commandgreen 0.196
defaults write TeXShop commandblue 0.184

# comments = solarized base01 = 88 110 117
defaults write TeXShop commentred 0.345
defaults write TeXShop commentgreen 0.043
defaults write TeXShop commentblue 0.459

# foreground = solarized base0 = 131 148 150
defaults write TeXShop foreground_R 0.514
defaults write TeXShop foreground_G 0.580
defaults write TeXShop foreground_B 0.589

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

default (){

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
