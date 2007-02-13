dependencies
temporarilySetDeveloperInitials
	"Set developer initials, because otherwise the Lockdown install will prompt for them; we can restore afterwards."
	self cacheDeveloperInitials.
	CachedDeveloperInitials ifEmpty: [
		Utilities setAuthorInitials: 'placeholderForLockdown'].
	