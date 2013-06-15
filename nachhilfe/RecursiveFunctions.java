/**
 * Description
 *
 * @author Aljosha Friemann, aljosha.friemann@gmail.com
 * @since 2013-06-14
 * @version 0.0
 */

public class RecursiveFunctions {
  public static int fib0=0;
  public static int fib1=1;

  public static void main(String[] args) {
    // calculate fibonacci numbers
    System.out.println("Calculating up to the 10th fibonacci number");

    int[] fibonacci = fibArray(10);

    System.out.println("The array is: "+arrayAsString(fibonacci)+" - calculating sum:");

    int fibSum = sum(fibonacci);

    System.out.println("The sum is: "+fibSum);

    // evaluation
    if (fibonacci == new int[] {fib0,fib1,1,2,3,5,8,13,21,34,55}) {
      System.out.println("Very good, fibonacci compilation complete! :)");
      } else {
      System.out.println("Too bad, fobonacci numbers are wrong! :(");
      }
    if (fibSum == 143) {
      System.out.println("Very good, sum calculation working! :)");
      } else {
      System.out.println("Sum calculation not working! :(");
      }
    }

  /**
   * Fibonacci numbers are calculated recursively:
   *  f(0)=0, f(1)=1, f(n)=f(n-1)+f(n-2)
   *
   * @param n see fibArray(n).
   * @return a fibonacci number as int.
   */
  public static int fibNumber(int n) {
    return -1; 
    }
  
  /**
   * This method calculates the sum of all elements of an int array
   *
   * @param iArray is an array containing int values.
   * @return the sum of iArray as an int.
   */
  public static int sum(int[] iArray) {
    int result = 0;

    for (int i=0; i< iArray.length; i++) {
      result = result + iArray[i];    
      }

    return result;
    }

  /**
   * This method calculates the sum of all elements of an int array
   * recursive version
   *
   * @param iArray is an array containing int values.
   * @return the sum of iArray as an int.
   */
  public static int rsum(int[] iArray) {
    return -1;
    }

  /**
   * A Helpfunction the collect fibonacci numbers in an array
   *
   * @param n the number up to which fibonacci numbers are to be calculated.
   * @return fibonacci numbers up to n as an int array.
   */
  public static int[] fibArray(int n) {
    int[] result = new int[n+1];

    for (int i=0; i<=n; i++) {
      result[i] = fibNumber(i);   
      }

    return result; 
    }

	public static String arrayAsString(int[] array) {
		String arrayString = "["; 
		for (int i=0; i<array.length; i++) {
			arrayString = arrayString+((i!=0) ? "," : "" )+array[i];
		}
		
		return arrayString+"]";
    }
  }

