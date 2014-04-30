class CreateRecievers < ActiveRecord::Migration
  def change
    create_table :recievers do |t|
      t.string :model
      t.string :reciever_num
      t.string :recieved_from
      t.text :remarks

      t.timestamps
    end
  end
end
