class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.binary :description
      t.boolean :future, default: false
      t.boolean :finished, default: false
      t.boolean :private, default: false
      t.float :percentage, default: 0.00
      t.date :due_date
      t.date :due_date, default: Date.today
      t.date :finish_date
    end
  end
end
