class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.text :content
      t.references :category, null: true, foreign_key: false

      t.timestamps
    end
  end
end