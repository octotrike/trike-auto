versioning
noteCompatibleSqueakVersion
	"Update the compatible Squeak version methods to reflect
	what version we are about to use to build the Trike release."

	self
		compatibleSqueakVersion: SystemVersion current version;
		compatibleSqueakHighestUpdate: SystemVersion current highestUpdate.
			