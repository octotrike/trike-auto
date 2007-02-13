installation
installDependencies
	"Load Trike's (and my) dependencies from SqueakMap."

	| sm |
	self temporarilySetDeveloperInitials.
	
	sm := SMSqueakMap default.
	self dependencies do: [:pkgRelId |
		(SMInstaller forPackageRelease: (sm packageReleaseWithId: pkgRelId)) install].
	
	self restoreDeveloperInitials