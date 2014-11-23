package ridgelyTree;

public class TreeNode {
	private int value;
	private TreeNode leftNode;
	private TreeNode rightNode;
	
	/*
	 * Purpose: The default constructor
	 * In: Nothing
	 * Out: TreeNode class object
	 */
	public TreeNode(){
		value = 0;
		leftNode = null;
		rightNode = null;
	}
	/*
	 * Purpose: The overloaded Constructor
	 * In: An integer value
	 * Out: TreeNode class object initialized to an integer
	 */
	public TreeNode(int v){
		value = v;
		leftNode = null;
		rightNode = null;
	}
	/*
	 * Purpose: Left node mutator
	 * In: An integer value
	 * Out: Sets the left node equal to a node with the integer value
	 */
	public void setLeftNode(int value){
		TreeNode newNode = new TreeNode(value);
		leftNode = newNode;
	}
	
	/*
	 * Purpose: Right node mutator
	 * In: An integer value
	 * Out: Sets the right node equal to a node with the integer value
	 */	public void setRightNode(int value){
		TreeNode newNode = new TreeNode(value);
		rightNode = newNode;
	}
	
	/*
	 * Purpose: Right node accessor
	 * In: Nothing
	 * Out: Returns the right node object
	 */
	public TreeNode getRightNode(){
		return rightNode;
	}
	
	/*
	 * Purpose: Left node accessor
	 * In: Nothing
	 * Out: Returns the left node obeject
	 */
	public TreeNode getLeftNode(){
		return leftNode;
	}
	
	/*
	 * Purpose: Value mutator
	 * In: integer value
	 * Out: Sets the value of the node equal to the argument
	 */
	public void setValue(int v){
		value = v;
	}
	
	/*
	 * Purpose: Accessor for the value
	 * In: Nothing
	 * Out: Returns the value
	 */
	public int getValue(){
		return value;
	}
		
}
