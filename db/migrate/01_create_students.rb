class CreateStudents < ActiveRecord::Migration[4.2]

  drop_table 'students' if ActiveRecord::Base.connection.table_exists? 'students'
  create_table :students


  def change
    drop_table 'students' if ActiveRecord::Base.connection.table_exists? 'students'
    create_table :students do |t|
      t.string :name
    end
  end

end
