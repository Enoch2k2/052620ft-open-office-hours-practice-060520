class Author
  extend Concerns::ClassMethods
  include Concerns::InstanceMethods

  attr_reader :name, :age, :books

  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @age = hash[:age]
    @books = []
  end

  

  def create_book(title)
    book = Book.create({title: title})
    @books << book
    book.author = self
  end

  def list_books
    @books.each do |book|
      puts book.title
    end
  end

  def self.all
    @@all
  end

  private
    def greeting
      puts "hello world!"
    end
end