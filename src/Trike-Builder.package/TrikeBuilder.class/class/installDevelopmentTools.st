installation
installDevelopmentTools
	"Load some common Trike development tools from SqueakMap."

	| sm |
	sm := SMSqueakMap default.
	self developmentTools do: [:pkgName |
		(SMInstaller forPackageRelease: (sm packageWithName: pkgName) lastRelease) install].
