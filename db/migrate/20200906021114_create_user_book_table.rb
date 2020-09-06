class CreateUserBookTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_books do |t|
    t.string :due_date
    t.boolean :returned, default: false
    t.integer :user_id
    t.integer :book_id
    end
  end
end
