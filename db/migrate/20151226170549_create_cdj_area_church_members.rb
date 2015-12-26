class CreateCdjAreaChurchMembers < ActiveRecord::Migration
  def change
    create_table :cdj_area_church_members do |t|
      t.references :cdj_area, index: true, foreign_key: true
      t.references :church_member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
