class AddSchoolClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :school_classes do |c|
      c.string :title
      c.integer :room_number
    end
  end
end
