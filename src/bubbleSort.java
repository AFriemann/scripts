
public class bubbleSort {
	public int iterations = 0;
	
	public static void main(String[] args)
	{
		int[] currArray = {5,3,6,2,1,8,5,90,10}; 
		
		System.out.println("unsorted array is: "+arrayAsString(currArray));
		
		currArray = sort(currArray); // TODO
		
		System.out.println("sorted array is: "+arrayAsString(currArray));
	}
	
	public static int[] sort(int[] array) {
		
		if (array.length == 0) {
			return array;
		} else 
			return outerSort(array);
	}
	
	/*
	 * 
	 * 
	 */
	public static int[] outerSort(int[] array) {

		if (array.length <= 1) {
			return array;
		} 
		
		array = innerSort(array);
		
		return combineArrays(outerSort(getSubArray(array, 0, array.length-1)), new int[] {array[array.length - 1]});
	}
	
	/*
	 * 
	 * 
	 */
	public static int[] innerSort(int[] array) {
		  int[] sortedArray = null;
		  int aLength = array.length;
		  System.out.println("current array is as follows: "+arrayAsString(array));
		  if (aLength == 0 || aLength == 1) {
			  sortedArray = array;
		  } 
		  else {
			  //int[] swappedInts = bubbleSwap(array);
			  //int[] rest = bubbleSort(Arrays.copyOfRange(array, 2, array.length()));
			  int[] tempArray = combineArrays(bubbleSwap( new int[] {array[0], array[1]} ), getSubArray(array, 2, aLength));
			  sortedArray = combineArrays(new int[] {tempArray[0]}, innerSort(getSubArray(tempArray, 1, aLength)));
			  //sortedArray = combineArrays(bubbleSwap(new int[] {array[0],array[1]}), 	// swap first two elements
			  //                         		sort(getSubArray(array, 2, array.length))); // sort rest of array
		  } 
			  
		  
		  
		  return sortedArray;
	}
	
	/*
	 * swaps first two elements of a given array according to x<y -> [x,y]
	 * 
	 */
	public static int[] bubbleSwap(int[] array) {
		  if (array[1] < array[0]) {
			  int foo = array[0];
			  array[0] = array[1];
			  array[1] = foo;
		  }

		  return array;
	}
	
	/*
	 * returns sub array of given array, starting with element 'start' end ending with element 'end'
	 * 
	 */
	public static int[] getSubArray(int[] a, int start, int end) {
		int[] newArray = new int[end-start];
		
		System.arraycopy(a, start, newArray, 0, end-start);
		
		return newArray;
	}
	
	/*
	 * returns two arrays combined as one, starting with first one given
	 * 
	 */
	public static int[] combineArrays(int[] a1, int[] a2) {
		int[] newArray = new int[a1.length + a2.length];
		
        System.arraycopy(a1, 0, newArray, 0, a1.length);
        System.arraycopy(a2, 0, newArray, a1.length, a2.length);
        
        return newArray;
	}

	public static String arrayAsString(int[] array) {
		String arrayString = "["; 
		for (int i=0; i<array.length; i++) {
			arrayString = arrayString+((i!=0) ? "," : "" )+array[i];
		}
		
		return arrayString+"]";
	}
}
