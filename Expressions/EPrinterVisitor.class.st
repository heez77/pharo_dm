Class {
	#name : #EPrinterVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Expressions-Model'
}

{ #category : #accessing }
EPrinterVisitor >> at: anId put: aValue [
	bindings at: anId put: aValue.
]

{ #category : #accessing }
EPrinterVisitor >> bindings: aDictionary [
	bindings := aDictionary
]

{ #category : #initialization }
EPrinterVisitor >> initialize [ 
	super initialize.
	bindings:= Dictionary new.
]

{ #category : #visiting }
EPrinterVisitor >> visitAddition: anAddition [
	| left right |
	left := anAddition left accept: self.
	right := anAddition right accept: self.
	^ '(', left , ' + ', right, ')'.
]

{ #category : #visiting }
EPrinterVisitor >> visitConstant: aConstant [
	^ aConstant value asString
]

{ #category : #visiting }
EPrinterVisitor >> visitDivision: aDivision [
	| numerator denominator |
	numerator := aDivision numerator accept: self.
	denominator := aDivision denominator accept: self.
	^ '(', numerator , ' / ', denominator, ')'.
]

{ #category : #visiting }
EPrinterVisitor >> visitMultiplication: aMultiplication [
	| left right |
	left := aMultiplication left accept: self.
	right := aMultiplication right accept: self.
	^ '(', left , ' * ', right, ')'.
]

{ #category : #visiting }
EPrinterVisitor >> visitNegation: aNegation [
	^' - ' + aNegation expression accept: self.
]

{ #category : #visiting }
EPrinterVisitor >> visitVariable: aVariable [
	| result |
	result:= aVariable evaluateWith: bindings.
	^result asString.
]
