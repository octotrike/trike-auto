installation
install
	"Install this version of Trike into this existing Squeak image, without changing any settings.  For a released version, it should be equivalent to installing Trike Morphic UI from SqueakMap, except that TrikeBuilder (and its dependencies) is already installed."
	
	self
		installDependencies;
		installTrikeUI