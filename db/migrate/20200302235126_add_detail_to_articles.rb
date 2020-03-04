class AddDetailToArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.column :content, :string
      t.column :date, :string
      t.column :title, :string
      t.column :topic, :string
      t.column :postid, :string
    end
  end
end
