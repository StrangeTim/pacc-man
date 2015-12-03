class CreateProjectSubTables < ActiveRecord::Migration
  def change
    create_table :project_parts do |t|
      t.integer :project_id
      t.string :name
    end

    create_table :pictures do |t|
      t.integer :project_id
      t.string :name
    end

    create_table :researches do |t|
      t.integer :project_id
      t.string :name
    end

    create_table :patterns do |t|
      t.string :name
    end

    create_table :supplies do |t|
      t.integer :project_id
      t.string :name
    end

    create_table :fabrics do |t|
      t.string :name
    end

    create_table :notes do |t|
      t.integer :project_id
      t.string :name
    end

    create_table :patterns_projects, :id => false do |t|
      t.integer :project_id
      t.integer :pattern_id
    end

    create_table :fabrics_projects, :id => false do |t|
      t.integer :project_id
      t.integer :fabric_id
    end

  end
end
