class CreateDiadiems < ActiveRecord::Migration[5.1]
  def change
    create_table :diadiems do |t|
      t.string :tendiadiem

      t.timestamps
    end
  end
end
