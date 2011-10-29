class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :name
          t.string :surname
          t.string :organization
          t.text :adress
          t.string :city
          t.string :country
          t.string :state
          t.string :zipcode
          t.string :mainEMail
          t.string :secEMail
          t.string :dayTimePhone
          t.string :nightTimePhone
          t.string :mobilePhone
      t.timestamps
    end
  end
end