class User < ActiveRecord::Base

    def self.login
        puts "Please tell us your first name"
        name = gets.chomp
        puts "Thanks #{name}! What is your password?"
        password = gets.chomp
        User.find_or_create_by(name: name, password: password)
    end

    def check_out_book(book, due_date)
        checkout = UserBook.find_or_create_by(
            due_date: due_date,
            returned: false,
            user_id: self.id,
            book_id: book.id)
    end


    def return_book(book)
        book = Book.find_by(title: book)
        return_book = UserBook.find_by(user_id: self.id, book_id: book.id, returned: false)
        return_book.returned = true
        return_book.save
    end

end