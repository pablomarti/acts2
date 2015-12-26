class CreateCdjAreas < ActiveRecord::Migration
  def change
    create_table :cdj_areas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
