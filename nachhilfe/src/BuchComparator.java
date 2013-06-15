import Buch

/**
 * Class BuchComparator
 *
 * used for comparison between authors for sorting business
 */
public class BuchComparator implements Comparator<Buch> {

  /**
  * compare method that implements the specefied sorting order for the class Buch
  *
  * @param b1,b2 of class "Buch
  * @return integer 0 if the first given Object is "bigger" than the second, returns 1 otherwise
  *
  */
  public int compare(Buch b1, Buch b2) {
    // compare author names
    int authorComparison = compareAuthors(b1.getAuthor(), b2.getAuthor());

    if (authorComparison == 2) { // authors are the same
      if (b2.getISBN() <= b1.getISBN()) { // sort for ISBN
        return 1; 
      } 
      return 0;
      } 

    else if (authorComparison == 1) { // author name of b2 is "smaller"
      return 1;
      }

    return 0;
    }

  /**
   * A help function that receives two Strings and returns 0 if the first one is lexicographically bigger than the second
   *
   * @param a1,a2 Strings containing author names
   * @return integer 0 if the first String is smaller, 1 if otherwise. Returns 2 if they are equal
   *
   */
  public int compareAuthors(String a1, String a2) {
    // loop letter for letter of a1 and a2, 
    //    if every letter is equal then return 2 (name is equal)
    //    if first author has letter closer to a, return 0
    //    else return 1
  }
}
