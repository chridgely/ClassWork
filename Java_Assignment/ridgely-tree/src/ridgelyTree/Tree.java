package ridgelyTree;

public class Tree {

	private TreeNode tree;
	
	/*
	 * Purpose: Overloaded constructor for Tree Class
	 * In: a Value to create the root
	 * Out: created the tree
	 */
	public Tree(int value){
		tree = new TreeNode(value);
	}
	
	/*
	 * Purpose: Accessor for the tree
	 * In: nothing
	 * Out: returns the tree
	 */
	public TreeNode getTree(){
		return tree;
	}
	
	/*
	 * Purpose: creates the tree
	 * In: An array of number to add to the tree
	 * Out: The completed tree is created
	 */
	public void createTree(int[] numbers){
		tree = new TreeNode(numbers[0]);
		
		for(int i = 1; i<numbers.length;i++){
			addChild(numbers[i], tree);
		}
	}
	
	/*
	 * Purpose: adds a child to the tree
	 * In: an integer value and a node to be added to
	 * Out: Adds a node to the tree in sorted order
	 */
	public void addChild(int value, TreeNode node){
		if(value > node.getValue()){
			if(node.getRightNode() != null)
				addChild(value, node.getRightNode());
			else
				node.setRightNode(value);
		}
		else{
			if(node.getLeftNode() != null)
				addChild(value, node.getLeftNode());
			else
				node.setLeftNode(value);
		}
			
	}
	
	/*
	 * Purpose: Prints the tree inOrder
	 * In: The node
	 * Out: The list as found by inOrder traversal
	 */
	public void inOrder(TreeNode t){
		if(t != null){
			inOrder(t.getLeftNode());  
			System.out.print(t.getValue() + " "); 
			inOrder(t.getRightNode());  
		}
	}
	
	/*
	 * Purpose: Prints the tree preOrder
	 * In: The node
	 * Out: The list as found by preOrder traversal
	 */
	public void preOrder(TreeNode t){
		if(t!=null){
			System.out.print(t.getValue() + " ");
			preOrder(t.getLeftNode());
			preOrder(t.getRightNode());
		}
	}
	
	/*
	 * Purpose: Prints the tree postOrder
	 * In: The node
	 * Out: The list as found by postOrder traversal
	 */
	public void postOrder(TreeNode t){
		if(t!=null){
			postOrder(t.getLeftNode());
			postOrder(t.getRightNode());
			System.out.print(t.getValue() + " ");
		}
	}
}
