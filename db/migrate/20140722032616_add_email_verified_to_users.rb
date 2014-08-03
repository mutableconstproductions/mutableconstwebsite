class AddEmailVerifiedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :emailverified, :boolean
  end
end
