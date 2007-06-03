source code control
bootstrapMonticello
	"Install versions of PackageInfo, Monticello and MonticelloConfigurations that (a) work (b) work with Squeak 3.9 (c) work together and (d) support writing postscripts to .mczs."
	| mcm |

	"Load the Monticello configuration from the Trike repository."
	mcm := self trikeRepository versionFromFileNamed: self monticelloConfigurationName.
	self halt.
	mcm load.
	
