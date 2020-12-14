Class {
	#name : #BaselineOfDice,
	#superclass : #BaselineOf,
	#category : #BaselineOfDice
}

{ #category : #baselines }
BaselineOfDice >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
					spec
					package: 'Dice';
					package: 'Dice-Tests' with: [ spec requires: #('Dice') ].
		]
]

{ #category : #baselines }
BaselineOfDice >> projectClass [
	^ MetacelloCypressBaselineProject
]
