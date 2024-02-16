class Password < ActiveRecord::Migration[7.1]
  def change
  end
  add_column :users, :password_digest, :string
end
