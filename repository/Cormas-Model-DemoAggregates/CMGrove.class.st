Class {
	#name : #CMGrove,
	#superclass : #CMSpatialEntityAggregate,
	#category : 'Cormas-Model-DemoAggregates'
}

{ #category : #'pov symbols' }
CMGrove class >> CMSpatialEntityPOV_Grove [
"Returns an array containing the settings of a CMSpatial entity pov symbol in the following order:
(color red) (color green) (color blue)"
^Array with: 0.0 with: 1.0 with: 0.0
]

{ #category : #'pov symbols' }
CMGrove class >> CMSpatialEntityPOV_big [
"Returns an array containing the settings of a CMSpatial entity pov symbol in the following order:
(color red) (color green) (color blue)"
^Array with: 0.0 with: 0.340007 with: 0.0
]

{ #category : #'pov symbols' }
CMGrove class >> CMSpatialEntityPOV_medium [
"Returns an array containing the settings of a CMSpatial entity pov symbol in the following order:
(color red) (color green) (color blue)"
^Array with: 0.0 with: 0.670004 with: 0.0
]

{ #category : #'pov symbols' }
CMGrove class >> CMSpatialEntityPOV_small [
"Returns an array containing the settings of a CMSpatial entity pov symbol in the following order:
(color red) (color green) (color blue)"
^Array with: 0.0 with: 1.0 with: 0.0
]

{ #category : #'pov symbols' }
CMGrove class >> defaultColor [ 
"Returns the default color (Automatically defined by Cormas)." 
^Color green
]

{ #category : #testing }
CMGrove class >> isAbstract [ 
^false
]

{ #category : #control }
CMGrove >> expand [
	"Each forest expands on external cells that are mostly surrounded by forest"
	
	| collec |
	collec := Cormas
		elementsFrom: self surround
		withMaxValue: #forestSurroundingRatio.
	collec size >= (self surround size / 10)
		ifTrue:
			[collec := Cormas
				selectRandomlyFrom: collec
				subCollectionSize: (self surround size / 10) rounded].
	collec do: [:c |  c tree: true]
]

{ #category : #pov }
CMGrove >> povSize [
	
	self components size < 50 ifTrue: [^#small].
	self components size < 250 ifTrue: [^#medium].
	^#big
]

{ #category : #procedure }
CMGrove >> setForest [
	
	self components do: [:c | c tree: true]
]

{ #category : #control }
CMGrove >> swell [
	"super swell ifTrue:[self getSkins do: [:coll | coll do: [:c| c tree: true]]]"
	
	^super swell
		ifTrue:
			[self components do: [:c | c tree: true].
			true]
		ifFalse: [false]
]
