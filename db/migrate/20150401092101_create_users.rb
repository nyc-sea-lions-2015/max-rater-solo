class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email, unique: true, null: false
      t.string :password_digest, null: false
      t.references :blog

      t.timestamps
    end
  end
end
