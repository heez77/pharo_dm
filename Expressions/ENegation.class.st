Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
ENegation class >> expression: anExpression [
	^self new expression: anExpression.
]

{ #category : #accessing }
ENegation >> evaluate [
	^expression evaluate * -1.
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	expression:= anExpression.
]
