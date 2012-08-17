class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :name
      t.string :address
      t.string :city
      t.decimal :phone
      t.references :dept

      t.timestamps
    end
  end
end
