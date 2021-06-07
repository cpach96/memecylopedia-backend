class CreateMemeReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :meme_references do |t|
      t.integer :meme_id
      t.string :name

      t.timestamps
    end
  end
end
