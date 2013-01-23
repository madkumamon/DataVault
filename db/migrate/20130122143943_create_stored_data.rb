class CreateStoredData < ActiveRecord::Migration
  def change
    create_table :stored_data do |t|
      t.string :key
      t.text :value
      t.integer :client_application_id

      t.timestamps
    end
  end
end
