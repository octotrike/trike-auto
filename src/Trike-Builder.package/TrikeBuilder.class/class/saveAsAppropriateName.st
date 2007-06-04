installation
saveAsAppropriateName
	"Save the image with an appropriate name."
	| image imageName changesName |
	image := SmalltalkImage current.
	imageName := self uniqueImageNameLike: 'Trike' , TrikeNotebook version.
	changesName := image fullNameForChangesNamed: imageName.
	(SourceFiles at: 2)
		ifNotNil: [image closeSourceFiles; saveChangesInFileNamed: changesName
			"so copying the changes file will always work"].
	image saveImageInFileNamed: imageName