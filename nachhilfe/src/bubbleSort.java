
public class bubbleSort {
	
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
    if (array.length == 0) {
    
    }
    
    return array;
		}
	
	/*
	 * 
	 * 
	 */
	public static int[] innerSort(int[] array) {
		return array;
    }
	
	/*
	 * swaps first two elements of a given array according to x<y -> [x,y]
	 * 
	 */
	public static void bubbleSwap(int[] array) {
      int foo = array[0];
      array[0] = array[1];
      array[1] = foo;
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
