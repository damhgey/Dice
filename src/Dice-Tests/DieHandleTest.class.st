"
A DieHandleTest is a test class for testing the behavior of DieHandle
"
Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #'Dice-Tests'
}

{ #category : #tests }
DieHandleTest >> testCreationAndAdding [

	|handle|
	handle:= DieHandle new 	
	addDie: (Die withFaces: 10);
	addDie: (Die withFaces: 20);
	yourself.
	self assert: handle diceNumber equals: 2
	
]

{ #category : #tests }
DieHandleTest >> testCreationWithSameDie [

	|handle|
	handle:= DieHandle new 	addDie: (Die withFaces: 10).
   self assert: handle diceNumber equals: 1.
   handle addDie: (Die withFaces: 10).
	self assert: handle diceNumber equals: 2
	
]

{ #category : #test }
DieHandleTest >> testMaxValue [

	|d|
	d:= DieHandle new .
	d addDie: (Die withFaces: 6).
	d addDie: (Die withFaces: 10).
	self assert: d maxValue equals: 16.
	
]

{ #category : #test }
DieHandleTest >> testRoll [

   |handle|
	handle:= DieHandle new .
	handle addDie: (Die withFaces: 6).
	handle addDie: (Die withFaces: 10).
	10 timesRepeat: [ self assert: (handle roll between: handle diceNumber  and:handle maxValue ) ]
	
]

{ #category : #'as yet unclassified' }
DieHandleTest >> testSimpleHandle [

	self assert: 2 D20 diceNumber  equals: 2.
]

{ #category : #'as yet unclassified' }
DieHandleTest >> testSumming [

	self assert: (2 D10 + 2D4 ) diceNumber equals: 4
]
