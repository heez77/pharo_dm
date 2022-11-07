Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #accessing }
ENegation >> evaluate [
	^expression evaluate * -1.
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	expression:= anExpression.
]
