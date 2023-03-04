"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'counter'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [

^ self new count: anInteger .
]

{ #category : #accessing }
Counter >> count [
	^ counter
]

{ #category : #setter }
Counter >> count: anInteger [
	counter := anInteger 
]

{ #category : #accessing }
Counter >> decrement [
	counter := counter - 1
]

{ #category : #accessing }
Counter >> increment [
	counter := counter + 1
]

{ #category : #initialization }
Counter >> initialize [ 
	counter := 0
]

{ #category : #printing }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: counter printString.
]
