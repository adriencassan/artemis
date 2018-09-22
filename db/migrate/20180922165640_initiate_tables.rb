class InitiateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :role
      t.boolean :active
      t.timestamps
    end

    create_table :stocks do |t|
      t.string :name
      t.string :mnemonic
      t.integer :nb_bull
      t.integer :nb_bear
      t.integer :nb_neutral
      t.timestamps
    end

    create_table :stock_analysis do |t|
      t.references :profile, foreign_key: true
      t.references :stock, foreign_key: true
      t.string :analysis
      t.string :value
      t.timestamps
    end
  end
end