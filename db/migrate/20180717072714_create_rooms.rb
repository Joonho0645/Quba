class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :option
      t.string :title
      t.string :capacity
      t.references :user, foreign_key: true
      t.references :chat, foreign_key: true
      t.string :description
      t.string :date
      t.string :expired
      t.string :location

      t.timestamps
    end
  end
end
