class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :serviceType
      t.string :departureCity
      t.string :departureCountry
      t.string :arrivalCity
      t.string :arrivalCountry

      t.timestamps
    end
  end
end
