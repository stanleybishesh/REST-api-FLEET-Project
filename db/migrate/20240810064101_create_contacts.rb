class CreateContacts < ActiveRecord::Migration[7.2]
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :email
      t.text :address
      t.text :message

      t.timestamps
    end
  end
end
