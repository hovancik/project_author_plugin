class CreateProjectAuthors < ActiveRecord::Migration
  def change
    create_table :project_authors do |t|
      t.references :user
      t.references :project
    end
    add_index :project_authors, :user_id
    add_index :project_authors, :project_id
  end
end
