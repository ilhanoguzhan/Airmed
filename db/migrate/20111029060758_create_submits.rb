class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.integer :active

      t.timestamps
    end
  end
end
