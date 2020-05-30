class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :title
      t.string :route
      t.string :date_taken
      t.string :location
      t.text :categories

      t.timestamps
    end
  end
end
