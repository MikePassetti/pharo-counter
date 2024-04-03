Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

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
	| c |
	c := Counter new.
	self assert: c count equals: 0  
]

{ #category : #tests }
CounterTest >> testPrintOn [ 
	
	self assert: Counter new printString  equals: 'a Counter with Value: 0'  
]

{ #category : #tests }
CounterTest >> testPrintOnStartAt [  
	
	self assert: (Counter startAt: 1) printString  equals: 'a Counter with Value: 1'  
]

{ #category : #tests }
CounterTest >> testStartAt5 [
	| c |
	c := Counter startAt: 5.
	self assert: c count  equals: 5  
]

{ #category : #tests }
CounterTest >> testStartAt5Increment [ 
	| c |
	c := Counter startAt: 5.
	c increment.
	self assert: c count  equals: 6  
]
