installation
installDevelopmentEnvironment
	"Install the appropriate version of the Trike UI, save the image under a new name, install some dev tools we commonly use, change some settings to make things more comfortable for non-native Squeakers and save the image."

	self
		install;
		saveAsAppropriateName;
		installDevelopmentTools;
		configureDevelopmentEnvironment;
		save.

