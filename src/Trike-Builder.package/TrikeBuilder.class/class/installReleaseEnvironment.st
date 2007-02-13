installation
installReleaseEnvironment
	"Install the appropriate version of the Trike UI, save the image under a new name, change some settings to make things more comfortable for non-Squeakers, create a Trike notebook, and save the image."

	self
		install;
		saveAsAppropriateName;
		configureReleaseEnvironment;
		save.

