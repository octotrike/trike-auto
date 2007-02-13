versioning
incrementInterfacePatchLevel
	"Increment TrikeNotebook's patch level.  Do not call this method on an image in the middle of a patch branch (i.e. there exist images of the same version but higher patch levels than this."
	self
		interfacePatchLevel: TrikeNotebook patchLevel + 1;
		becomeDevelopmentVersion