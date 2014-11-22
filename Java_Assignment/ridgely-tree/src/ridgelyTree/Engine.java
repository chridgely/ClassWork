package ridgelyTree;

public class Engine {
	
	
	
	public void testTree(int[] numbers){
		
		Tree testTree = new Tree(numbers[0]);
		testTree.createTree(numbers);
		
		testTree.inOrder(testTree.getTree());
		System.out.println();
		testTree.preOrder(testTree.getTree());
		System.out.println();
		testTree.postOrder(testTree.getTree());
		System.out.println();

	}
}
