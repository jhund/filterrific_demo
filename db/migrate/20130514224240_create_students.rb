class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.text :email
      t.integer :country_id

      t.timestamps
    end
  end
end
