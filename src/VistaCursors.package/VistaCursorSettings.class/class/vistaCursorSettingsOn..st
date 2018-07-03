settings api
vistaCursorSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #vistacursor)
		label: 'VistaCursor';
		parent: #appearance;
		description: 'All Vista Cursor settings settings';
		noOrdering;
		with: [ (aBuilder range: #cursorScaleFactor)
				order: 1;
				target: self;
				label: 'Cursor scale factor';
				description: 'Set the scale factor of the cursor';
				default: self defaultCursorScaleFactor;
				range: (1 to: 8) ]