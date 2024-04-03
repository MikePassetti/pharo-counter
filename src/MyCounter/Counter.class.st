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

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: aNumber [
	count := aNumber. 	
	
	
]