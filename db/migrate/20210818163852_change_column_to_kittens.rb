class ChangeColumnToKittens < ActiveRecord::Migration[6.1]
  def change
    change_column :kittens, :softness, :string
  end
end
