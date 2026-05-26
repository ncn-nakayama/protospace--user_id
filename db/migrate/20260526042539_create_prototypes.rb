class CreatePrototypes < ActiveRecord::Migration[7.1]
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :catch_copy
      t.string :concept
      t.string :user
      t.timestamps
    end
  end
end
