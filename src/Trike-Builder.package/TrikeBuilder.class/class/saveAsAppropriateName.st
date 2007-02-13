saving
saveAsAppropriateName
	"Save the image with an appropriate name."

	| baseName counter image dot imageName changesName |
	baseName := 'Trike', TrikeNotebook version.
	counter := 0.
	image := SmalltalkImage current.
	dot := FileDirectory default.

	[
		imageName := image fullNameForImageNamed: (self imageNameLike: baseName uniquely: counter).
		changesName := image fullNameForChangesNamed: imageName.
		counter := counter + 1
	] doWhileTrue: [
		(dot fileOrDirectoryExists: imageName) or: [dot fileOrDirectoryExists: changesName]].

	(SourceFiles at: 2) ifNotNil: [
		image
			closeSourceFiles; "so copying the changes file will always work"
			saveChangesInFileNamed: changesName].
	image saveImageInFileNamed: imageName.