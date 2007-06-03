installation
installTrikeUI
	"Install the appropriate version of the Trike UI.  It is set up with dependencies, so everything else will be installed automatically."
	| mcm |

	"Load the Trike configuration from the Trike repository."
	mcm := self trikeRepository versionFromFileNamed: self trikeConfigurationName.
	mcm load.

