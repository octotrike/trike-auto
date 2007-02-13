installation
installTrikeUI
	"Install the appropriate version of the Trike UI.  It is set up with dependencies, so everything else will be installed automatically."

	self initializeTrikeSrc.
	MCMczReader 
		loadVersionStream: (TrikeSrc readOnlyFileNamed: self uiSourceFileName)
		fromDirectory: TrikeSrc.
