class CreateDepts < ActiveRecord::Migration
  def change
    create_table :depts do |t|
      t.string :deptName
      t.string :managerName

      t.timestamps
    end
  end
end
