class CreateAlls < ActiveRecord::Migration
  def change
    create_table :alls do |t|
      t.binary :one
      t.boolean :two
      t.date :three
      t.datetime :four
      t.decimal :five
      t.float :six
      t.integer :seven
      t.references :listing, index: true, foreign_key: true
      t.string :nine
      t.text :ten
      t.time :eleven
      t.timestamp :twelve
      # t.hstore :thirteen
      t.json :fourteen
      # t.array :fifteen      ### postgresql is giving error when trying to rake db:migrate
      # t.cidr_address :sixteen
      # t.ip_address :seventeen
      # t.inet_address :eighteen
      t.macaddr :nineteen
      ############################
      # had to store as strings whatever that i could not rake db:migrate
      ############################
      t.string :thirteen
      t.string :fifteen
      t.string :sixteen
      t.string :seventeen
      t.string :eighteen

      t.timestamps null: false
    end
  end
end
