class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text       :content   ,null: false, default: ""
      t.references :prototype ,null: false, default: "", foreign_key: true 
      t.references :user      ,null: false, default: "", foreign_key: true 
      t.timestamps
    end
  end
end
