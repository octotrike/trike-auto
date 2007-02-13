versioning
incrementInterfaceVersion
	"Increment TrikeNotebook's main version number."
	self
		interfaceVersion: TrikeNotebook interfaceVersion + 1;
		interfacePatchLevel: 0;
		becomeDevelopmentVersion