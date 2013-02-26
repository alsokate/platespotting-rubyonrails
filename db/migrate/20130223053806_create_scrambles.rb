class CreateScrambles < ActiveRecord::Migration
  def change
    create_table :scrambles do |t|
      t.string :code
      t.references :country

      t.timestamps
    end
    add_index :scrambles, :country_id
  end
end
