require_relative "./concerns"

require_relative "./author"
require_relative "./book"

author = Author.create({ name: 'J.R.R. Tolkein', age: 128 })
author.create_book('The Hobbit')
author.create_book('Fellowship of the Ring')
author.create_book('The Two Towers')
author.create_book('The Return Of The King')

# author.list_books

Book.list_books

















