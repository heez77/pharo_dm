Class {
	#name : #EAddition,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EAddition class >> left: anEExpression right: anEExpression2 [
	^ self new left: anEExpression; right: anEExpression2
]

{ #category : #accessing }
EAddition >> evaluate [
	^left evaluate + right evaluate.
]

{ #category : #accessing }
EAddition >> left: anExpression [
	left:= anExpression.
]

{ #category : #accessing }
EAddition >> right: anExpression [
	right:= anExpression.
]
