class ChangeColumnToKittens < ActiveRecord::Migration[6.1]
  def change
    change_column :kittens, :softness, :integer
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
