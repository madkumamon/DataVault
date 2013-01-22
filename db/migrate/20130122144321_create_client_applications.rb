class CreateClientApplications < ActiveRecord::Migration
  def change
    create_table :client_applications do |t|
      t.string :name
      t.string :access_token
      t.integer :user_id

      t.timestamps
    end
  end
end
