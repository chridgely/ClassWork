package ridgelyTree;

public class Engine {
	
	
	/*
	 * Purpose: Test function
	 * In: An array of numbers to test
	 * Out: The results printed to terminal
	 */
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
