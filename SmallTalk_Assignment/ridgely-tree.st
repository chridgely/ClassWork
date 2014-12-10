Object subclass: #Tree
instanceVariableNames: 'value leftNode rightNode'
classVariableNames: ''
poolDictionaries: '' !

!Tree methodsFor: 'inserting'!

"
Purpose: This is basically the constructor for the root/nodes
In: A number to initialize the values
Out: A node object
"
initialize: number
   value _ number.
   leftNode _ nil.
   rightNode _ nil.
!

"
Purpose: This returns the value
In: None
Out: The value of the object
"
value
   ^value
!

"
Purpose: This returns the leftNode
In: None
Out: The leftNode object
"
leftNode
   ^leftNode
!

"
Purpose: This returns the rightNode
In: None
Out: The rightNode object
"
rightNode
   ^rightNode
!

"
Purpose: This inserts a node onto the BST
In: a number value to add
Out: Mutates the tree
"
insertNode: number
   |newValue|
   newValue _ number.
   newValue < self value ifTrue:[
                         self leftNode isNil ifTrue:[ leftNode _ Tree new initialize: newValue ]
                                        ifFalse:[ self leftNode insertNode: number ]]
                         ifFalse:[
                         self rightNode isNil ifTrue:[ rightNode _ Tree new initialize: newValue ]
                                        ifFalse:[ self rightNode insertNode: number ]]
!

"
Purpose: This prints out the value of the node
In: None
Out: Prints a value
"
visitMe
   self value printNl
!

"
Purpose: This prints out the BST inorder
In: None
Out: The BST printed inorder
"
inorder
   self leftNode isNil ifFalse:[ self leftNode inorder ].
   self visitMe.
   self rightNode isNil ifFalse:[ self rightNode inorder ].
!

"
Purpose: This prints out the BST preorder
In: None
Out: The BST printed preorder
"
preorder
   self visitMe.
   self leftNode isNil ifFalse:[ self leftNode preorder ].
   self rightNode isNil ifFalse:[ self rightNode preorder ].
!

"
Purpose: This prints out the BST postorder
In: None
Out: The BST printed postorder
"
postorder
   self leftNode isNil ifFalse:[ self leftNode postorder ].
   self rightNode isNil ifFalse:[ self rightNode postorder ].
   self visitMe.
!!


"Main - for testing"
   | t |
   t _ Tree new initialize: 5.
   t insertNode: 9.
   t insertNode: 2.
   t insertNode: 4.
   t insertNode: 12.

   'preorder print:' printNl.
   t preorder.
   'inorder print:' printNl.
   t inorder.
   'postorder print:' printNl.
   t postorder.
!


"
Result:

'preorder print:'
5
2
4
9
12
'inorder print:'
2
4
5
9
12
'postorder print:'
4
2
12
9
5


" 
