class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.string :image
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
