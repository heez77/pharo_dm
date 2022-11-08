Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#category : #'Expressions-Model'
}

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [
	^ aConstant value.
]
