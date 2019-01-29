class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :text, null: false
      t.string :cite, null: false

      t.timestamps
    end
  end
end
