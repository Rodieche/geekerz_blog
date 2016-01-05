class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.date :fecha
      t.string :title
      t.text :body
      t.string :user
      t.integer :visitas
      t.string :email

      t.timestamps null: false
    end
  end
end
