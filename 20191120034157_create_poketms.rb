class CreatePoketms < ActiveRecord::Migration[5.2]
  def change
    create_table :poketms do |t|
      t.string :ptname
      t.string :name
      t.string :move
      t.string :move2
      t.string :move3
      t.string :move4
      t.string :character
      t.string :item
      t.string :name2
      t.string :move5
      t.string :move6
      t.string :move7
      t.string :move8
      t.string :character2
      t.string :item2
      t.string :name3
      t.string :move9
      t.string :move10
      t.string :move11
      t.string :move12
      t.string :character3
      t.string :item3
      t.string :name4
      t.string :move13
      t.string :move14
      t.string :move15
      t.string :move16
      t.string :character4
      t.string :item4
      t.string :name5
      t.string :move17
      t.string :move18
      t.string :move19
      t.string :move20
      t.string :character5
      t.string :item5
      t.string :name6
      t.string :move21
      t.string :move22
      t.string :move23
      t.string :move24
      t.string :character6
      t.string :item6
      t.text :summary
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
