class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :Name
      t.string :Email
      t.string :Password
      t.timestamps
    end
  end
end
