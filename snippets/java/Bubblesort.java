/**
 * Description
 *
 * @author Aljosha Friemann, aljosha.friemann@gmail.com
 * @since 2013-06-14
 * @version 0.0
 */

public class Bubblesort {

  public static void main(String[] args)
	{
		Buch[] array = {new Buch("Barry Burd","0470371749"),
                    new Buch("Christian Ullenboom","383621802X"),
                    new Buch("Greg Michaelson","0486478831"),
                    new Buch("Greg Michaelson","0486478831"),
                    new Buch("Donald E. Knuth","0321751043"),
                    new Buch("Bruce Schneier","0471117099"),
                    new Buch("Donald E. Knuth","8131708411")
                    }; 
		
		System.out.println("unsorted array is: "+arrayAsString(array));
		
		array = sort(array); 		

		System.out.println("sorted array is: "+arrayAsString(array));
    }

  /**
   *
   *
   */
	public static Buch[] sort(Buch[] array) {
    return array;		
	}
	
	/*
	 * 
	 * 
	 */
	public static Buch[] outerSort(Buch[] array) {
    return array;
		}
	
	/*
	 * 
	 * 
	 */
	public static Buch[] innerSort(Buch[] array) {
    return array;
	}
	
	/*
	 * swaps first two elements of a given array according to x<y -> [x,y]
	 * 
	 */
	public static Buch[] bubbleSwap(Buch[] array) {
    Buch foo = array[0];
    array[0] = array[1];
    array[1] = foo;

    return array;
	}

	/*
	 * returns sub array of given array, starting with element 'start' end ending with element 'end'
	 * 
	 */
	public static Buch[] getSubArray(Buch[] a, int start, int end) {
		Buch[] newArray = new Buch[end-start];
		
		System.arraycopy(a, start, newArray, 0, end-start);
		
		return newArray;
	}

	/*
	 * returns two arrays combined as one, starting with first one given
	 * 
	 */
	public static Buch[] combineArrays(Buch[] a1, Buch[] a2) {
		Buch[] newArray = new Buch[a1.length + a2.length];
		
    System.arraycopy(a1, 0, newArray, 0, a1.length);
    System.arraycopy(a2, 0, newArray, a1.length, a2.length);
    
    return newArray;
	}

	public static String arrayAsString(Buch[] array) {
		String arrayString = "["; 
		for (int i=0; i<array.length; i++) {
			arrayString = arrayString+((i!=0) ? "," : "" )+array[i].toString();
		}
		
		return arrayString+"]";
	}
  
  }

