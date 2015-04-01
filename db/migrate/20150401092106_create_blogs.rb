class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.references :user
      t.references :post

      t.timestamps
    end
  end
end
