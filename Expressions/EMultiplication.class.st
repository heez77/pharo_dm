Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EMultiplication class >> fiveTimesThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new left: ep1 ; right: ep2.
]

{ #category : #'instance creation' }
EMultiplication class >> left: anEExpression right: anEExpression2 [
	^ self new left: anEExpression; right: anEExpression2.
]

{ #category : #accessing }
EMultiplication >> evaluate [
	^left evaluate * right evaluate.
]

{ #category : #accessing }
EMultiplication >> left: anExpression [
	left:= anExpression.
]

{ #category : #accessing }
EMultiplication >> right: anExpression [
	right:= anExpression.
]
