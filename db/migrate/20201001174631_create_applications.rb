class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :fname
      t.string :lname
      t.string :gender
      t.string :email
      t.string :contact
      t.string :address
      t.string :education
      t.timestamps
    end
  end
end
