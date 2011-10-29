class CreateHastaBilgileris < ActiveRecord::Migration
  def change
    create_table :hasta_bilgileris do |t|
      t.string :name
      t.string :surname
      t.date :dateOfBirth
      t.text :diagnosis
      t.string :operationDate
      t.string :hospitalName
      t.string :organization
      t.string :webSite
      t.string :telephone
      t.text :adress
      t.string :city
      t.string :country
      t.string :state
      t.string :zipCode
      t.string :docSubject
      t.string :docLink
      t.text :aditionalInfo

      t.timestamps
    end
  end
end
