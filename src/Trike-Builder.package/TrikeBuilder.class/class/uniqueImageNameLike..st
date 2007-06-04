installation
uniqueImageNameLike: baseName
	| counter  candidateName |
	counter := 0.
	candidateName := ''.
	[candidateName := self imageNameLike: baseName uniquely: counter.
	counter := counter + 1]
		doWhileFalse: [self nameIsUnique: candidateName].
	^ candidateName
