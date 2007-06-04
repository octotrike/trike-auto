installation
imageNameLike: aString uniquely: anInteger
	"Answer an image filename based on aString and anInteger."
	
	^aString, (anInteger > 0 ifTrue: ['.', anInteger asString] ifFalse: ['']), '.image'