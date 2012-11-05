class CreateProjectors < ActiveRecord::Migration
  def change
    create_table :projectors do |t|

      t.timestamps
    end
  end
end
