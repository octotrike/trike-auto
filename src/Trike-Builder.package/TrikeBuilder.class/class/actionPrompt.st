user interface
actionPrompt
	"Prompt the user to decide what to install/do.  At the moment this runs we may be in a stock Squeak image, i.e. no Interaction-Actions."
	| menu |
	menu := MenuMorph new.
	menu 
		target: self;
		add: 'install complete development environment' action: #installDevelopmentEnvironment;
		add: 'install development version only (do not change settings)' action: #install;
		add: 'test release candidate' action: #testReleaseCandidate;
		add: 'install release environment' action: #installReleaseEnvironment.
	menu popUpInWorld
	