class CreateCoops < ActiveRecord::Migration
  def change
    create_table :coops do |t|
      t.string :title
      t.string :company
      t.string :location
      t.string :url

      t.timestamps null: false
    end
  end
end
