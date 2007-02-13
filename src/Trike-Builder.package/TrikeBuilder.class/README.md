I am a place to collect scripts for building and maintaining Trike.  All my methods are on the class side.

To install a released version of Trike into an existing Squeak image, go to SqueakMap and install the appropriate Trike Morphic UI package.  Everything else you need to run Trike will automatically install as well.

To work on a patch for a released version of Trike, do the above (pick the latest patch version for a given minor version, please) and then evaluate one or both of the following:

	TrikeBuilder incrementInterfacePatchLevel	"I'm going to edit the interface."
	TrikeBuilder incrementModelPatchLevel		"I'm going to edit the model."


To install this development version of Trike into this existing Squeak image, without changing any settings:

	TrikeBuilder install 

To turn this virgin Squeak image into a standard Trike development environment: 

	TrikeBuilder installDevelopmentEnvironment

To publically release the version of Trike you have been developing in this image:

	TrikeBuilder publish

For license, see https://github.com/octotrike/trike-auto/blob/master/LICENSE.
