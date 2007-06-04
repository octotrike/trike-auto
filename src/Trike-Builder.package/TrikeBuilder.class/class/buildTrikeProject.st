user interface
buildTrikeProject
	| project |
	project := Project newMorphicOn: nil.
	project changeSet name: self projectName.
	project setParent: Project current.
	self registerToOpenDevelopmentToolsIn: project world.
	project enter