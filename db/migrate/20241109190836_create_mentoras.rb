class CreateMentoras < ActiveRecord::Migration[8.0]
  def change
    create_table :mentoras do |t|
      t.string :nome
      t.string :contato
      t.string :habilidades

      t.timestamps
    end
  end
end
