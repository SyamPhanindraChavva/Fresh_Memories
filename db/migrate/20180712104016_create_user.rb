class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :email
      t.text :phone
      t.date :dob
      t.date :dom
      t.date :doj
      t.string :password_digest
    end
  end
end
