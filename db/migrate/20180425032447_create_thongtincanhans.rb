class CreateThongtincanhans < ActiveRecord::Migration[5.1]
  def change
    create_table :thongtincanhans do |t|
      t.integer :thongtincongviec_id
      t.string :hovaten
      t.string :sodienthoai
      t.string :email
      t.integer :vitricongviec_id
      t.string :filedinhkem

      t.timestamps
    end
  end
end
