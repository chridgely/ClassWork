package ridgelyTree;

public class Tree {
	
	//Possible sorting method?
	//Instantiate the TreeNode Class
	private TreeNode tree;
	
	public Tree(){
		tree = new TreeNode();
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
}
