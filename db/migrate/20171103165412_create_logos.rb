class CreateLogos < ActiveRecord::Migration[5.1]
  def change
    create_table :logos do |t|

      t.timestamps
    end
  end
end
