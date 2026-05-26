class CreatePrototypes < ActiveRecord::Migration[7.1]
  def change
    create_table :prototypes do |t|
      t.string     :title      ,null: false, default: ""
      t.text       :catch_copy ,null: false, default: ""
      t.text       :concept    ,null: false, default: ""
      t.references :user       ,null: false, default: "", foreign_key: true 
      t.timestamps
    end
  end
end
