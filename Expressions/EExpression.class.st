Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #arithmetic }
EExpression >> accept: aVisitor [
	self subclassResponsibility.
]

{ #category : #accessing }
EExpression >> evaluateWith: anEnvironment [
	| visitor |
	visitor := EEvaluatorVisitor new.
	visitor bindings: anEnvironment.
	^ self accept: visitor.
]

{ #category : #arithmetic }
EExpression >> negated [
	^ENegation new expression: self.
]
