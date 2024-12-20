"
I am a simple concrete class which supports incrementing and decrementing.

My API is 
	- `decrement` and `increment`
	- `count`

My creation message is `StartAt:`


"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #initialization }
Counter class >> startAt: anInteger [ 
	^ self new count: anInteger
	
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: aNumber [
	count := aNumber. 	
	
	
]

{ #category : #API }
Counter >> decrement [ 
	count := count - 1
]

{ #category : #accessing }
Counter >> increment [ 
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [ 
	super initialize.
	count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
"changes the default behaviour of printOn as defined in the super class"
	super printOn: aStream.
	aStream nextPutAll: ' with Value: ', count printString  
]
