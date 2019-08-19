class CreatePoliticians < ActiveRecord::Migration[5.2]
  def change
    create_table :politicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :state
      t.string :img_url
      t.string :party
      t.string :chamber

      t.timestamps
    end
  end
end
