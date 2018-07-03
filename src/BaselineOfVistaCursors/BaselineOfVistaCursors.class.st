"
A baseline for Vista cursors
"
Class {
	#name : #BaselineOfVistaCursors,
	#superclass : #BaselineOf,
	#category : 'BaselineOfVistaCursors'
}

{ #category : #baseline }
BaselineOfVistaCursors >> baseline: spec [
	<baseline>
	
	spec for: #common do: [ spec package: 'VistaCursors' ]
]
