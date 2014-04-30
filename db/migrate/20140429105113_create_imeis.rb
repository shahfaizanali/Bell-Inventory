class CreateImeis < ActiveRecord::Migration
  def change
    create_table :imeis do |t|
      t.string :imei_num
      t.references :phone, index: true

      t.timestamps
    end
  end
end
