class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :pic
      t.string :score
      t.string :caption
      t.string :user_id

      t.timestamps
    end
  end
end
