"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : #MyClass,
	#superclass : #Object,
	#instVars : [
		'counter'
	],
	#category : #MyCounter
}

{ #category : #accessing }
MyClass >> count [
	^ counter
]

{ #category : #setter }
MyClass >> count: anInteger [
	counter := anInteger 
]
