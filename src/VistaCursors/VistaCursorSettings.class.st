"
Settings for the vista Cursor
"
Class {
	#name : #VistaCursorSettings,
	#superclass : #Object,
	#classVars : [
		'CursorScaleFactor'
	],
	#category : 'VistaCursors-Settings'
}

{ #category : #settings }
VistaCursorSettings class >> cursorScaleFactor [

	^CursorScaleFactor ifNil: [ CursorScaleFactor := self defaultCursorScaleFactor ].
	
]

{ #category : #settings }
VistaCursorSettings class >> cursorScaleFactor: anInteger [

	CursorScaleFactor := anInteger.
	VistaCursors set.
]

{ #category : #'private - defaults' }
VistaCursorSettings class >> defaultCursorScaleFactor [

	^1
]

{ #category : #'settings api' }
VistaCursorSettings class >> vistaCursorSettingsOn: aBuilder [
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
]
