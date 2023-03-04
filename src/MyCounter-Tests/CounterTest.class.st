"
A CounterTest is a test class for testing the behavior of Counter
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> testCount [

	|c|
	c := Counter new count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testCounterStartsAt5 [
	|c|
	c := Counter startingAt: 5.
	self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testDecrement [

	|c|
	c := Counter new count: 2.
	c decrement ; decrement.
	self assert: c count equals: 0
]

{ #category : #tests }
CounterTest >> testIncrement [

	|c|
	c := Counter new count: 0.
	c increment ; increment.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testInitialize [

	|c|
	c := Counter new.
	self assert: c count equals: 0
]
