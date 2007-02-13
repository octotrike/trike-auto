preferences
setFonts
	"Set all fonts to Bitstream Vera Sans."
	| bvs small larger |
	bvs := TextStyle named: 'BitstreamVeraSans'.
	small := bvs fontOfPointSize: 9.
	larger := bvs fontOfPointSize: 12.
	Preferences
		setSystemFontTo: larger;
		setListFontTo: larger;
		setFlapsFontTo: small;
		setEToysFontTo: larger;
		setHaloLabelFontTo: small;
		setMenuFontTo: larger;
		setWindowTitleFontTo: larger;
		setBalloonHelpFontTo: small;
		setCodeFontTo: larger;
		setButtonFontTo: larger