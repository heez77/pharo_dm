Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Expressions-Model'
}

{ #category : #accessing }
EEvaluatorVisitor >> at: anId put: aValue [
	bindings at: anId put: aValue.
]

{ #category : #accessing }
EEvaluatorVisitor >> bindings [
 ^bindings 
]

{ #category : #accessing }
EEvaluatorVisitor >> bindings: aDictionary [
	bindings := aDictionary
]

{ #category : #initialization }
EEvaluatorVisitor >> initialize [ 
	super initialize.
	bindings:= Dictionary new.
]

{ #category : #visiting }
EEvaluatorVisitor >> visitAddition: anEAddition [
	|leftValue rightValue|
	leftValue:= anEAddition left accept: self.
	rightValue:= anEAddition right accept: self.
	^ (leftValue + rightValue)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [
	^ aConstant value.
]

{ #category : #visiting }
EEvaluatorVisitor >> visitDivision: aDivision [
	| numerator denominator error|
	numerator:= aDivision numerator accept: self.
	denominator:= aDivision denominator accept: self.
	error:= EZeroDenominator new.
	denominator == 0 ifTrue:
	[error signal "Can't divide by zero"].
	^numerator / denominator.
]

{ #category : #visiting }
EEvaluatorVisitor >> visitMultiplication: anEMultiplication [
	|left right|
	left:= anEMultiplication left accept: self.
	right:= anEMultiplication right accept: self.
	^ left * right
]

{ #category : #visiting }
EEvaluatorVisitor >> visitNegation: anENegation [
	|expression|
	expression:= anENegation expression accept: self.
	^ -1 * expression.
]

{ #category : #visiting }
EEvaluatorVisitor >> visitVariable: aVariable [
	| result |
	result:= aVariable evaluateWith: bindings.
	^result.
]
