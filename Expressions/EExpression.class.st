Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #arithmetic }
EExpression >> accept: aVisitor [
	self subclassResponsibility.
]

{ #category : #arithmetic }
EExpression >> negated [
	^ENegation new expression: self.
]
