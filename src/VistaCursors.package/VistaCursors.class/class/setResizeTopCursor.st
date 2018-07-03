cursors
setResizeTopCursor

	|form cursor factor |
	form := (Form
	extent: 9@23
	depth: 32
	fromArray: #( 0 0 0 922945050 3171091994 922945050 0 0 0 0 0 922945050 3171091994 4293256936 3171091994 922945050 0 0 0 922945050 3171091994 4293256936 4294967295 4293256936 3171091994 922945050 0 922945050 3171091994 4293256936 4294967295 4294967295 4294967295 4293256936 3171091994 922945050 3171091994 4293256936 4294967295 4294967295 4294967295 4294967295 4294967295 4293256936 3171091994 3171091994 4278388250 4278388250 3171091994 4294967295 3171091994 4278388250 4278388250 3171091994 0 0 0 3171091994 4294967295 3171091994 0 0 0 0 0 0 3171091994 4294967295 3171091994 0 0 0 0 0 0 3171091994 4294967295 3171091994 0 0 0 0 0 0 3171091994 4294901502 3171091994 0 0 0 0 0 0 3171091994 4294769916 3171091994 0 0 0 0 0 0 3171091994 4294638330 3171091994 0 0 0 0 0 0 3171091994 4294440951 3171091994 0 0 0 0 0 0 3171091994 4294309365 3171091994 0 0 0 0 0 0 3171091994 4294046193 3171091994 0 0 0 0 0 0 3171091994 4293848814 3171091994 0 0 0 0 0 0 3171091994 4293717228 3171091994 0 0 0 3171091994 4278388250 4278388250 3171091994 4293519849 3171091994 4278388250 4278388250 3171091994 3171091994 4292269784 4293717228 4293519849 4293388263 4293322470 4293322470 4291809233 3171091994 922945050 3171091994 4292006612 4293388263 4293322470 4293322470 4291809233 3171091994 922945050 0 922945050 3171091994 4291809233 4293322470 4291809233 3171091994 922945050 0 0 0 922945050 3171091994 4291809233 3171091994 922945050 0 0 0 0 0 922945050 3171091994 922945050 0 0 0)
	offset: 0@0).
	
	factor := VistaCursorSettings cursorScaleFactor.	
	form := form magnifyBy: VistaCursorSettings cursorScaleFactor.
	cursor := Cursor extent: form extent depth: 32.
	cursor offset: (5 * factor) negated @ (form height // 2) negated.
	cursor bits: form bits.
	Cursor classPool at: #ResizeTopCursor put: cursor.
	cursor beCursor