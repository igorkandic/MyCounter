"
A CounterTest is a test class for testing the behavior of Counter
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #test }
CounterTest >> testDecrement [

	|c|
	c := Counter new count: 2.
	c decrement ; decrement.
	self assert: c count equals: 0
]

{ #category : #test }
CounterTest >> testIncrement [

	|c|
	c := Counter new count: 0.
	c increment ; increment.
	self assert: c count equals: 2
]
