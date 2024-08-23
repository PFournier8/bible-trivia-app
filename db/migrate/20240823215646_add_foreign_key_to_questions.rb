class AddForeignKeyToQuestions < ActiveRecord::Migration[7.2]
  def change
    add_foreign_key :questions, :categories
  end
end