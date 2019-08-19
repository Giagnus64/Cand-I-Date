class CreateStances < ActiveRecord::Migration[5.2]
  def change
    create_table :stances do |t|
      t.belongs_to :politician, foreign_key: true
      t.belongs_to :issue, foreign_key: true
      t.boolean :support

      t.timestamps
    end
  end
end
