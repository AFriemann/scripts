/**
 * Class Buch that contains information about a book
 *
 */

import java.util.Comparator;

public class Buch implements Comparable<Buch> {
  private String ISBN;
  private String Author;

  /**
   * @param author name as String.
   * @param isbn ISBN number as int.
   */
  public Buch(String author, String isbn) {
    this.Author = author;
    this.ISBN = isbn;
  }

  /**
   * @param b Object of class Buch.
   * @return value smaller than 0 if this is smaller than b, bigger than 0 if
   * this is bigger than b, otherwise 0.
   */ 
  public int compareTo(Buch b) {
    // compare author names
    int authorComparison = b.getAuthor().compareToIgnoreCase(b.getAuthor());

    if (authorComparison == 0) { // authors are the same
      return this.ISBN.compareToIgnoreCase(b.getISBN());
      } 

    return authorComparison;
    }

  public String toString() {
    return "("+Author+","+ISBN+")";
    }
  
  /**
   * Get ISBN.
   *
   * @return ISBN as int.
   */
  public String getISBN()
  {
      return ISBN;
  }
  
  /**
   * Get Author.
   *
   * @return Author as String.
   */
  public String getAuthor()
  {
      return Author;
  }
}
