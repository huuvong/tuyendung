class CreateVitricongviecs < ActiveRecord::Migration[5.1]
  def change
    create_table :vitricongviecs do |t|
      t.string :tenvitri

      t.timestamps
    end
  end
end
