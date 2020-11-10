# require_relative './book'
#you dont want to require here. Also book is not an instance of library so it should not inhrent. Just add require book in the library test
class Library #< Book

  attr_reader :name,
              :books, #dont need this if created a method
              :authors

  def initialize(name)
    @name = name
    @books = [] #you dont need this since authors have access to books
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book| #this method is doing two things. Use a helper
      @books << book #this way is not dynamic because the author wont be added twice if they write a new book
    end
  end

  #def books
  #all_books = []
  #@authors.each do |author|
  #author.books.each do |book|
  #all_books << book
  #end
  #end
  #all_books
  #end

  #map is better you can also use flat_map
#   def books.map do |author|
#     author.books
#   end.flatten
# end
# end
  def publication_date_first_book(author) #didnt need this helper, just do all of it using min and max
    actual = []
    author.books.min_by do |book|
      actual << book.publication_year
      if book.publication_year < actual[0] #this is nonsense, dont do conditionals when you have a method for it
        actual << book.publication_year
      end
    end
    actual[0]
  end

  def publication_time_frame_for(author)
    hash = {}
    author.books.each do |book|
      hash[:start] = publication_date_first_book(author)
      hash[:end] = publication_date_first_book(author)
    end
    hash
  end

  # def publication_time_frame_for(author)
  #another idea is sort_by and grabe values by using index
  # test ideas in pry, like if I needed integer or could compare as strings
  # it does work as strings
  #time_frame = {}
  #years = author.books.map do |book|
  # book.publication_year
  #end
  #build hash and return time_frame last line
  # end

  

end
