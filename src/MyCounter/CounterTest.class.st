Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
CounterTest class >> testStartingAt5 [ 
	self assert: (Counter new startingAt: 5) count equals: 5
]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testDecrement [ 
	| c |
	c := Counter new.
	c count: 2.
	c decrement.
	self assert:  c count equals: 1 
]

{ #category : #tests }
CounterTest >> testIncrement [
	| c |
	c := Counter new.
	c count: 0; increment; increment.
	self assert: c count equals: 2
	
]

{ #category : #tests }
CounterTest >> testInitialize [ 
	self assert:  Counter new count equals: 0 
]
