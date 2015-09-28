class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
      t.string :name
      t.string :email
      t.string :description
      t.string :avatar

      t.timestamps null: false
    end
  end
end
