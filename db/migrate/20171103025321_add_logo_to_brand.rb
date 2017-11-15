class AddLogoToBrand < ActiveRecord::Migration[5.1]
  def change
    add_column :brand, :logo, :string
  end
end
