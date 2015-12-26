class CreateChurchCampus < ActiveRecord::Migration
  def change
    create_table :church_campus do |t|
      t.references :country, index: true, foreign_key: true
      t.string :name
      t.text :location

      t.timestamps null: false
    end
  end
end
