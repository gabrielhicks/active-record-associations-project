require 'rest-client'
require 'json'
require 'pry'

Author.destroy_all
Book.destroy_all
Category.destroy_all
User.destroy_all
UserBook.destroy_all

author1 = Author.create(name: "John")
author2 = Author.create(name: "Paul")
author3 = Author.create(name: "Mark")
author4 = Author.create(name: "Luke")
author5 = Author.create(name: "Matthew")

book1 = Book.create(title: "Bible", author_id: 1, category_id: 1)
book2 = Book.create(title: "The other Bible", author_id: 2, category_id: 1)
book3 = Book.create(title: "eBible", author_id: 3, category_id: 2)
book4 = Book.create(title: "iBible", author_id: 4, category_id: 2)
book5 = Book.create(title: "BibleIron", author_id: 5, category_id: 2)

cat1 = Category.create(name: "fiction")
cat2 = Category.create(name: "non fiction")

user1 = User.create(name: "Gabriel")
user2 = User.create(name: "Jessica")
user3 = User.create(name: "Jacob")
user4 = User.create(name: "Sean")
user5 = User.create(name: "Caryn")

# ub1 = UserBook.create(due_date: , returned: false, user_id: 1, book_id: 5)
# ub2 = UserBook.create(due_date: , returned: false, user_id: 2, book_id: 4)
# ub3 = UserBook.create(due_date: , returned: false, user_id: 3, book_id: 3)
# ub4 = UserBook.create(due_date: , returned: false, user_id: 4, book_id: 2)
# ub5 = UserBook.create(due_date: , returned: false, user_id: 5, book_id: 1)