"Starting the SMALLTALK"

Object subclass: #Node
instanceVariableNames: 'number left right'
classVariableNames: ''
poolDictionaries: '' !

!Node methodsFor: 'inserting'!

initialize: initialNumber 
   self number: initialNumber.
   self left: nil.
   self right: nil.
!

number
   ^number
!

leftNode
   ^left
!

rightNode
   ^right
!

compareNode: number node
   node notNil ifTrue: [self number >= node number ifTrue:[compareNode self number node right]
                                                  ifFalse:[compareNode self number node left]]
   ^node
!

addNode: number root
   |temp|
   self Node notNil ifTrue:[
      temp := (compareNode: number root)
      number >= (temp number) ifTrue: [temp right := (initialize number)]
                              ifFalse: [temp left := (initialize number)]
   ^root
!

inOrder: root
