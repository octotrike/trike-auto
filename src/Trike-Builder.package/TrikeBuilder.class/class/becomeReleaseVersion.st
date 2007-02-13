versioning
becomeReleaseVersion
	"Turn this image into a release version.  An image is a release version if TrikeNotebook isDevelopmentVersion answers false."

	self
		noteCompatibleSqueakVersion;
		interfaceDevelopmentVersion: false;
		modelDevelopmentVersion: false
	

	