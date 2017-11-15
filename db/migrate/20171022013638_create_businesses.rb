class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :brandname
      t.string :legalname
      t.string :website

      t.timestamps
    end
  end
end
