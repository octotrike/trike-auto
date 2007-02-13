user interface
buildNotebookCreator
	"Stick a notebook creator in the lower left."

	| description thumbnail button |
	description := TrikeNotebook descriptionForPartsBin.
	thumbnail := PartsBin thumbnailForInstanceOf: TrikeNotebook.
	button := IconicButton new
		initializeWithThumbnail: thumbnail
		withLabel: description formalName translated
		andColor: World color
		andSend: description nativitySelector
		to: TrikeNotebook.
	button setBalloonText: description documentation translated.
	button position: 10@(Display height - (button height + 10)).
	button openInWorld.
