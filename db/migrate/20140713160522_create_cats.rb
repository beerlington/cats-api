class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :cloudinary_public_id

      t.timestamps
    end
  end
end
