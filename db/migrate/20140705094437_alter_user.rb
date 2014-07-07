class AlterUser < ActiveRecord::Migration
  def up
    rename_table("users","admin_users")
    add_column("admin_users","username",:string,:limit=>25,:after=>"email")
    rename_column("admin_users","password","hashed_password")
    puts "###Change Column####"
    change_column("admin_users","email",:string,:limit=>100)
    add_index("admin_users","username")
  end
  def down
    remove_index("admin_users","username")
    change_column("admin_users","email",:string,:default=>"",:null=>false)
    rename_column("admin_users","hashed_password","password")
    remove_column("admin_users","username")
    rename_table("admin_users","users")

  end
end
