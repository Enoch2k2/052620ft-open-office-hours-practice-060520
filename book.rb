class Book
  attr_accessor :title, :author

  extend Concerns::ClassMethods
  include Concerns::InstanceMethods

  @@all = []

  def initialize(hash)
    self.title = hash[:title]
  end

  def save
    self.class.all << self
  end

  def print_author
    puts "#{self.title} written by #{self.author.name}"
  end

  def self.list_books
    @@all.each do |book|
      book.print_author
    end
  end

  def self.all
    @@all
  end
end