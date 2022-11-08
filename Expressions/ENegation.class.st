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
ENegation >> evaluateWith: anObject [
	^ (expression evaluateWith: anObject) negated
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	expression:= anExpression.
]

{ #category : #arithmetic }
ENegation >> negated [
	^ expression.
]

{ #category : #printing }
ENegation >> printOn: aStream [
	aStream nextPutAll: '- '.
	expression printOn: aStream
]
