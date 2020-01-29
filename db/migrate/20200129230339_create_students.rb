class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :integer
      t.text :bio

      t.timestamps
    end
  end
end
