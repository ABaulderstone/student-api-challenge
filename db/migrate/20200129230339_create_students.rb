class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.integer :gender
      t.text :bio

      t.timestamps
    end
  end
end
