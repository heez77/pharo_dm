Class {
	#name : #EAddition,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EAddition class >> fivePlusThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	^ self new left: ep1 ; right: ep2.
]

{ #category : #'instance creation' }
EAddition class >> left: anEExpression right: anEExpression2 [
	^ self new left: anEExpression; right: anEExpression2
]

{ #category : #accessing }
EAddition >> evaluate [
	^left evaluate + right evaluate.
]

{ #category : #accessing }
EAddition >> left: anExpression [
	left:= anExpression.
]

{ #category : #accessing }
EAddition >> right: anExpression [
	right:= anExpression.
]
