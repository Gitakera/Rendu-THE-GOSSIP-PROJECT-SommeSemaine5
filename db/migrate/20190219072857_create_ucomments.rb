class CreateUcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :ucomments do |t|
      t.string :content
      t.belongs_to :user
      t.belongs_to :comment
      t.timestamps
    end
  end
end
