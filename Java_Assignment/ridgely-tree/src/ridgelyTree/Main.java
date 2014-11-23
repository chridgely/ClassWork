package ridgelyTree;

public class Main {

	public static void main(String[] args) {
		Engine engine = new Engine();
		
		System.out.println("Test 1\n");
		
		int[] numbers= {54,32,75,34,73,88,43,23};
		engine.testTree(numbers);
		
		System.out.println("Test 2\n");
		
		int[] numbers1= {2,3,4,1,5,3,2,6,1,8,4};
		engine.testTree(numbers1);
		
		System.out.println("Test 3\n");
		int[] numbers2= {99,12,5,33,22,33,33,55,33,12,76,45,34,22,86,34,21,1,3,4,1,5,7,0,0};
		engine.testTree(numbers2);
	}
	


}
/*
 * Test One:
 * 	23 32 34 43 54 73 75 88  inorder 
 * 	54 32 23 34 43 75 73 88  preorder
 * 	23 43 34 32 73 88 75 54  postorder
 * 
 * Test Two:
 * 	1 1 2 2 3 3 4 4 5 6 8    inorder
 * 	2 1 1 2 3 3 4 4 5 6 8	 preorder 
 * 	1 2 1 3 4 8 6 5 4 3 2 	 postorder
 * 
 * Test Three:
 *  0 0 1 1 3 4 5 5 7 12 12 21 22 22 33 33 33 33 34 34 45 55 76 86 99   inorder
 *  99 12 5 1 1 0 0 3 4 5 12 7 33 22 22 21 33 33 33 55 45 34 34 76 86   preorder
 *  0 0 1 5 4 3 1 7 12 5 21 22 33 33 33 22 34 34 45 86 76 55 33 12 99   postorder
 */
