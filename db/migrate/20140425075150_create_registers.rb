class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :username
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
