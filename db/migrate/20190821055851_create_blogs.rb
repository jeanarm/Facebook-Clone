class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :content
      t.text :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
