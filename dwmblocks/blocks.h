//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  {"┇  ", "~/dwm-config/scripts/echo_language.sh", 0, 1},

  {" ", "~/dwm-config/scripts/echo_battery.sh", 15, 0},

  {" " , "~/dwm-config/scripts/echo_volume.sh", 0, 1},

	{"  " , "date '+%d/%m/%Y'", 60, 0},
	{"  ", "date '+%H:%M  '", 5, 0},

};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "  ┇  ";
static unsigned int delimLen = 7;
