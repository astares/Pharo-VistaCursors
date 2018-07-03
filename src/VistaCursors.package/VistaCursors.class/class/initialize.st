class initialization
initialize
	Smalltalk os isWin32 ifFalse: [ ^UIManager default inform: 'Vista Cursor only works on Windows' ].
	self set 