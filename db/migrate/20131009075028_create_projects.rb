class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :tweet
      t.has_attached_file :avatar

      t.timestamps
    end
  end
end
