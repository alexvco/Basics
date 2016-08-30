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
      t.hstore :thirteen
      t.json :fourteen
      t.array :fifteen
      t.cidr_address :sixteen
      t.ip_address :seventeen
      t.inet_address :eighteen
      t.mac_address :nineteen

      t.timestamps null: false
    end
  end
end
