/**
 * Class Buch that contains information about a book
 *
 */
public class Buch {
  private int ISBN;
  private String Author;
  private String Name;

  /**
   * @param author name as string
   * @param name book name as string
   * @param isbn ISBN number as integer
   */
  public Buch(String author, String name, int isbn) {
    this.Author = author;
    this.Name = name;
    this.ISBN = isbn;
  }

  /**
   * @return author name as String
   */
  public String getAuthor() {
    return Author;
  }

  /**
   * @return book name as String
   */
  public String getName() {
    return Name;
  }

  /**
   * @return integer containing ISBN
   */
  public int getISBN() {
    return ISBN;
  }
}
