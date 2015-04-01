class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.references :blogs
      t.references :posts

      t.timestamps
    end
  end
end
