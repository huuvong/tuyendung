class CreateThongtincongviecs < ActiveRecord::Migration[5.1]
  def change
    create_table :thongtincongviecs do |t|
      t.string :tencongviec
      t.integer :congty_id
      t.integer :vitricongviec_id
      t.integer :diadiem_id
      t.string :sohoso
      t.string :mavitri
      t.date :thoihannophoso
      t.string :thongtinvitri
      t.string :mota
      t.string :yeucau
      t.string :chedoluong

      t.timestamps
    end
  end
end
