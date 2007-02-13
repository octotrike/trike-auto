versioning
incrementModelPatchLevel
	"Increment TrikeModel's patch level.  The interface patch level must always be incremented when the model patch level is incremented, but we don't do that here because we don't know if it already has been.  Do not call this method on an image in the middle of a patch branch (i.e. there exist images of the same version but higher patch levels than this."

	self
		modelPatchLevel: TrikeModel patchLevel + 1;
		becomeDevelopmentVersion