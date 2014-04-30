class AddSourColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sour, :integer
  end
end
