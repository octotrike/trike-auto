user interface
prompt
	"Prompt the user to decide what to install/do. At the moment
	this runs we may be in a stock Squeak image, i.e. no
	Interaction-Actions. "
	| menu |
	menu := MenuMorph new.
	menu target: self;
		 add: 'install complete development environment' translated action: #installDevelopmentEnvironment;
		 add: 'install development packages only (do not change settings)' translated action: #installDevelopmentVersion.
	menu popUpInWorld