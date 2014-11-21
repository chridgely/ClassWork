package ridgelyTree;

public class TreeNode {
	private int value;
	private TreeNode leftNode;
	private TreeNode rightNode;
	//Creating the Node Object
	/*
	 * Node to the Left
	 * Node to the Right
	 * Integer Number
	 * */
	
	//Here be the constructor
	public TreeNode(){
		value = 0;
		leftNode = null;
		rightNode = null;
	}
	//Here be the overloaded constructor
	public TreeNode(int v, TreeNode l, TreeNode r){
		value = v;
		leftNode = l;
		rightNode = r;
	}
	//Mutator for the left
	public void setLeftNode(int value){
		TreeNode newNode = new TreeNode(value, null, null);
		leftNode = newNode;
	}
	
	//Mutator for the right
	public void setRightNode(int value){
		TreeNode newNode = new TreeNode(value, null, null);
		rightNode = newNode;
	}
	
	//Accessor for the right
	public TreeNode getRightNode(){
		return rightNode;
	}
	
	//Accessor for the left
	public TreeNode getLeftNode(){
		return leftNode;
	}
	
	//Mutator for the value
	public void setValue(int v){
		value = v;
	}
	
	//Accessor for the value
	public int getValue(){
		return value;
	}
	
	//Method with a sort method? Might work better in the tree class
	
}
