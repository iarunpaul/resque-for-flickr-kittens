class ChangeSoftnessToKittens < ActiveRecord::Migration[6.1]
  def change
    change_column :kittens, :softness, :integer
  end
end
