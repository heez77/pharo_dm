Class {
	#name : #EPrinterVisitorTest,
	#superclass : #TestCase,
	#category : #'Expressions-Test'
}

{ #category : #tests }
EPrinterVisitorTest >> testPrinterAdditionPrintsAdditionResult [
	| expression result |
	expression := EAddition left: (EConstant value: 7) right: (EConstant value: -2).
	result := expression accept: EPrinterVisitor  new.
	self assert: result equals: '(7 + -2)'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrinterConstantPrintsConstantValue [
	| constant result |
	constant := EConstant value: 5.
	result := constant accept: EPrinterVisitor new.
	self assert: result equals: '5'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrinterDivisionPrintsDivisionResult [
	| expression result |
	expression := EDivision numerator: (EConstant value: 6) denominator: (EConstant value: 3).
	result := expression accept: EPrinterVisitor  new.
	self assert: result equals: '(6 / 3)'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrinterMultiplicationPrintsMultiplicationResult [
	| expression result |
	expression := EMultiplication
	left: (EConstant value: 7)
	right: (EConstant value: -2).
	result := expression accept: EPrinterVisitor new.
	self assert: result equals: '(7 * -2)'.
]

{ #category : #tests }
EPrinterVisitorTest >> testPrinterVariablePrintsVariableValue [
	| expression result visitor |
	expression := EVariable id: #answerToTheQuestion.
	visitor := EPrinterVisitor new.
	visitor at: #answerToTheQuestion put: 42.
	result := expression accept: visitor.
	self assert: result equals: '42'
]
