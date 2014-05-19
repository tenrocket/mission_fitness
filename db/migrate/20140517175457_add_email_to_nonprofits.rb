class AddEmailToNonprofits < ActiveRecord::Migration
  def change
  	add_column :nonprofits, :email, :string
  end
end
