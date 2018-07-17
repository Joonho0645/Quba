class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.string :timelimit
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
