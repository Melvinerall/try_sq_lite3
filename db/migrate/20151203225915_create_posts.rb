class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :description
      t.text :title
      t.references :user, index: true

      t.timestamps
    end
  end
end
