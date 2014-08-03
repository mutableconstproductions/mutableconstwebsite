class RenameEmailVerified < ActiveRecord::Migration
  def change
	 rename_column :users, :emailverified, :email_verified
  end
end
