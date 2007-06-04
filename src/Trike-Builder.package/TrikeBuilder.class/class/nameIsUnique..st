installation
nameIsUnique: candidateName 
	| image dot imageName changesName |
	image := SmalltalkImage current.
	dot := FileDirectory default.
	imageName := image fullNameForImageNamed: candidateName.
	changesName := image fullNameForChangesNamed: imageName.
	^(dot fileOrDirectoryExists: imageName) not
				and: [(dot fileOrDirectoryExists: changesName) not]
