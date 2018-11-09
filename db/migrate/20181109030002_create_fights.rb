class CreateFights < ActiveRecord::Migration[5.2]
  def change
    create_table :fights do |t|
      t.references :user, foreign_key: true
      t.boolean :user_won?
      t.integer :superhero_id
      t.datetime :ended_at

      t.timestamps
    end
  end
end
