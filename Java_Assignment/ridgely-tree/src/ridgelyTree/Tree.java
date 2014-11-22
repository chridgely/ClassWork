package ridgelyTree;

public class Tree {
	
	//Possible sorting method?
	//Instantiate the TreeNode Class
	private TreeNode tree;
	
	public Tree(int value){
		tree = new TreeNode(value);
	}
	
	public TreeNode getTree(){
		return tree;
	}
	
	public void createTree(int[] numbers){
		tree = new TreeNode(numbers[0]);
		
		for(int i = 1; i<numbers.length;i++){
			addChild(numbers[i], tree);
		}
	}
	
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
	
	public void inOrder(TreeNode t){
		if(t != null){
			inOrder(t.getLeftNode());  
			System.out.print(t.getValue() + " "); 
			inOrder(t.getRightNode());  
		}
	}
	
	public void preOrder(TreeNode t){
		if(t!=null){
			System.out.print(t.getValue() + " ");
			preOrder(t.getLeftNode());
			preOrder(t.getRightNode());
		}
	}
	
	public void postOrder(TreeNode t){
		if(t!=null){
			postOrder(t.getLeftNode());
			postOrder(t.getRightNode());
			System.out.print(t.getValue() + " ");
		}
	}
}
