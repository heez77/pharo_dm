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

{ #category : #visiting }
ENegation >> accept: aVisitor [
	^ aVisitor visitNegation: self.
]

{ #category : #accessing }
ENegation >> evaluate [
	^expression evaluate * -1.
]

{ #category : #accessing }
ENegation >> evaluateWith: anObject [
	^ self accept: (EEvaluatorVisitor new bindings: anObject).
]

{ #category : #accessing }
ENegation >> expression [
	^ expression.
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
