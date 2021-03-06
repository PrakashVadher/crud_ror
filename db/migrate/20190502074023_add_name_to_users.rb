class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name,  :string
  	add_column :users, :gender,     :string
  	add_column :users, :dob, 		:datetime
  	add_column :users, :avatar, 	:string
  end
end
