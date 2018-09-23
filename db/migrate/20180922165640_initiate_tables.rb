class InitiateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :role
      t.string :avatar
      t.boolean :active, default: true
      t.timestamps
    end

    create_table :stocks do |t|
      t.string :name
      t.string :mnemonic
      t.integer :nb_buy, default: 0
      t.integer :nb_sell, default: 0
      t.integer :nb_neutral, default: 0
      t.timestamps
    end

    create_table :stock_ratings do |t|
      t.references :profile, foreign_key: true
      t.references :stock, foreign_key: true
      t.string :analysis
      t.string :value, default: "Neutral"
      t.timestamps
    end
  end
end
