# randomuseful
Random scripts for unrelated tasks, backups or reminders.


#### texshop_colors.sh

This shell script sets various colour themes for TeXShop on Mac OSX.

The basic usage is as follows:

    $ bash texshop_colors.sh -t|--theme <theme-name>

This will call an internal function with that theme name that will colour TeXShop accordingly. Note, TeXShop will need restarting for changes to take effect.

Supported themes are:

     - "pale"               Pale tan background, grey/red text.
     - "solarzied_light"    High contrast, light background.
     - "solarized_dark"     High contrast, dark background.
     - "solarzed2"          An alternative dark solarized theme.
     - "default"            Reset to TexShop default colour theme.
     - "matrix"		    Fun green and black style. Not actually that functional!


Since TeXShop expects RGB values for various parameters, but not in the usual 256-bit format (255,255,255 etc.), there is an internal calculator function that will convert the values for you so you can specify your own colour themes!
Simply copy an existing theme, modify the function name, and modify the 3 parameters per element according to the values you calculated.

This works like so:

    $ bash texshop_colors.sh -c|--calculate '255:153:0'

and will produce the following output:

    R 255 converts to: 1.00000000000000000000
    G 153 converts to: .60000000000000000000
    B 0 converts to: 0
