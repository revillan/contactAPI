class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true, null: false
      t.string :body, null: false
      t.integer :author_id, null: false, index: true
      t.timestamps null: false
    end
  end
end
