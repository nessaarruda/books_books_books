class Book

  attr_reader   :author_first_name,
                :author_last_name,
                :title,
                :publication_date,
                :author,
                :publication_year,
                :books

  def initialize(author_first_name: author_first_name, author_last_name: author_last_name, title: title, publication_date: publication_date)
    @author_first_name = author_first_name
    @author_last_name = author_last_name
    @title = title
    @publication_date = publication_date
    @author = @author_first_name + " " + @author_last_name
    @publication_year = @publication_date.split[-1] #the step of creating an array becuase of split is an additional data estructer that I dont want to create. Better use [-4..-1] to access the last 4 letters of the string.
    @books = []
    #should have created a method for name and year so it is more dynamic. Also avoid putting too much in initialize
  end

  def write(book_name, publication_date)
    @books
  end
end
