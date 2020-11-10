class Author
  attr_reader :first_name, #dont need this or last name as attr_reader since the prompt does not ask for it at any point
              :last_name,
              :name,
              :books

    def initialize(first_name: first_name, last_name: last_name)
      @first_name = first_name
      @last_name = last_name
      @name = @first_name + " " + @last_name #create method avoid extra stuff in initialize
      @books = []
    end

    def write(book_name, publication_date)
      book_name = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: book_name, publication_date: publication_date})
      @books << book_name
      book_name
      #optional code set the data as variable, it looks cleaner
      # data = {author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_year}
      # new_book = Book.new(data)
      # @books << new_book
      # new_book
    end
end
