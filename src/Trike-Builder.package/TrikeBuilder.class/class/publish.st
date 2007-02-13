publishing
publish
	"Publically release this version of Trike.  Obviously, you must have the appropriate permissions in SVN and SqueakMap for this to work."
	"Run this in your dev image.   It will build a fresh release image, run all the tests, and if that works, publish the code and increment the version number."

	self 
		codeCleanup;
		saveCode.
	self testsPassInFreshImage ifFalse: [
		self handleFailingTests.
		^self].
	self 
		becomeReleaseVersion;
		checkInRelease;
		publishToSqueakMap.
	"TrikeNotebook patchLevel > 0 
		ifTrue: [self incrementInterfacePatchLevel]
		ifFalse: [self incrementInterfaceVersion]."
	self
		becomeDevelopmentVersion;
		checkIn.