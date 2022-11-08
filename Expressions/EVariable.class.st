Class {
	#name : #EVariable,
	#superclass : #Object,
	#instVars : [
		'id'
	],
	#category : #Expressions
}

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
