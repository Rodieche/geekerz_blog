class AddColumnNameToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :email, :string
  end
end
