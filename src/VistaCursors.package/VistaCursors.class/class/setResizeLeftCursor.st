cursors
setResizeLeftCursor

	|form cursor factor |
	form := (Form
	extent: 23@9
	depth: 32
	fromArray: #( 0 0 0 922945050 3171091994 3171091994 0 0 0 0 0 0 0 0 0 0 0 3171091994 3171091994 922945050 0 0 0 0 0 922945050 3171091994 4293256936 4278388250 0 0 0 0 0 0 0 0 0 0 0 4278388250 4292269784 3171091994 922945050 0 0 0 922945050 3171091994 4293256936 4294967295 4278388250 0 0 0 0 0 0 0 0 0 0 0 4278388250 4293717228 4292006612 3171091994 922945050 0 922945050 3171091994 4293256936 4294967295 4294967295 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 4293519849 4293388263 4291809233 3171091994 922945050 3171091994 4293256936 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294967295 4294901502 4294769916 4294638330 4294440951 4294309365 4294046193 4293848814 4293717228 4293519849 4293388263 4293322470 4293322470 4291809233 3171091994 922945050 3171091994 4293256936 4294967295 4294967295 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 3171091994 4293322470 4293322470 4291809233 3171091994 922945050 0 922945050 3171091994 4293256936 4294967295 4278388250 0 0 0 0 0 0 0 0 0 0 0 4278388250 4293322470 4291809233 3171091994 922945050 0 0 0 922945050 3171091994 4293256936 4278388250 0 0 0 0 0 0 0 0 0 0 0 4278388250 4291809233 3171091994 922945050 0 0 0 0 0 922945050 3171091994 3171091994 0 0 0 0 0 0 0 0 0 0 0 3171091994 3171091994 922945050 0 0 0)
	offset: 0@0).
	
	factor := VistaCursorSettings cursorScaleFactor.
	form := form magnifyBy: factor.
	cursor := Cursor extent: form extent depth: 32.
	cursor offset: (form width // 2) negated @ (5 * factor) negated.
	cursor bits: form bits.
	Cursor classPool at: #ResizeLeftCursor put: cursor.
	cursor beCursor