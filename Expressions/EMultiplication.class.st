Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
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
EMultiplication >> evaluateWith: anObject [
	^ (right evaluateWith: anObject) * (left evaluateWith: anObject).
]

{ #category : #'as yet unclassified' }
EMultiplication >> operatorString [
	^'*'
]

{ #category : #printing }
EMultiplication >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: ' * '.
	right printOn: aStream.
	aStream nextPutAll: ' )'.
]
