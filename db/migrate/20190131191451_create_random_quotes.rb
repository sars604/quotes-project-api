class CreateRandomQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :random_quotes do |t|
      t.string :rand_text, null: false
      t.string :rand_cite, null: false

      t.timestamps
    end
  end
end
