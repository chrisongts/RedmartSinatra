class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name
      t.string :address
      t.string :email
      t.string :password
      t.string :cc_number
      t.date :date_joined

      t.timestamps
    end

  end
end
