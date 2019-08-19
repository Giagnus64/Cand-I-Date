class CreateStances < ActiveRecord::Migration[5.2]
  def change
    create_table :stances do |t|
      t.integer :politician_id
      t.integer :issue_id
      t.boolean :support

      t.timestamps
    end
  end
end
