class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :homepage, null: false, foreign_key: true
      t.string :content, null: false

      t.timestamps
    end
  end
end