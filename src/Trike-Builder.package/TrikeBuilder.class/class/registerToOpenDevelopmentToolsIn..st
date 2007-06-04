user interface
registerToOpenDevelopmentToolsIn: world
	| doOnce |
	doOnce := DoCommandOnceMorph new.
	doOnce 
		color: Color transparent;
		borderWidth: 0;
		actionBlock: [self openDevelopmentTools. world removeMorph: doOnce].
	world addMorph: doOnce