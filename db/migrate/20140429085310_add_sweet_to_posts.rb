class AddSweetToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sweet, :integer
  end
end
