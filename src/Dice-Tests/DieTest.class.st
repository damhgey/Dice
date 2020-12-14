"
A DieTest is a test class for testing the behavior of Die
"
Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #'Dice-Tests'
}

{ #category : #test }
DieTest >> testFacesCreation [

	|d|
	d:= Die withFaces: 20.
	self assert: d faces equals: 20

	
]

{ #category : #tests }
DieTest >> testInitialize [ 

	|d|
	d := Die new.
	self assert: d faces equals: 6
]

{ #category : #test }
DieTest >> testRoll [

	|d| 
	d := Die new.
	10 timesRepeat: 
	[ self assert: (d roll between: 1 and:6)  ]

	
]
