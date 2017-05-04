class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :birthday
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :email
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
