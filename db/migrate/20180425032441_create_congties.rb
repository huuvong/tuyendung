class CreateCongties < ActiveRecord::Migration[5.1]
  def change
    create_table :congties do |t|
      t.string :tencongty

      t.timestamps
    end
  end
end
