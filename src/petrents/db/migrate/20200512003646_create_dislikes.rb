class CreateDislikes < ActiveRecord::Migration[5.2]
  def change
    create_table :dislikes do |t|
      t.string :dislikes

      t.timestamps
    end
  end
end
