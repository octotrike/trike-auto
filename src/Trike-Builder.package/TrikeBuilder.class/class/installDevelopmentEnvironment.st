installation
installDevelopmentEnvironment
	"Install the latest version of the Trike code and all its dependencies, plus some dev tools we commonly use.  Change some settings to make things more comfortable for non-native Squeakers.  Save all this under an appropriate new name. "

	self
		installDevelopmentVersion;
		saveAsAppropriateName;
		installDevelopmentTools;
		configureDevelopmentEnvironment;
		save.

