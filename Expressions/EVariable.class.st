Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #Expressions
}

{ #category : #accessing }
EVariable class >> id: anId [
	^ self new id: anId; yourself
]

{ #category : #visiting }
EVariable >> accept: aVisitor [
 ^ aVisitor visitVariable: self.
]

{ #category : #accessing }
EVariable >> evaluateWith: aBindingDictionary [
	^ aBindingDictionary at: id.
]

{ #category : #accessing }
EVariable >> id: aSymbol [
	id := aSymbol.
]

{ #category : #accessing }
EVariable >> printOn: aStream [
	aStream nexPutAll: id asString.
]
