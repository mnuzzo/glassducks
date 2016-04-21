class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :id_number
      t.decimal :rating
      t.text :description

      t.timestamps null: false
    end
  end
end
