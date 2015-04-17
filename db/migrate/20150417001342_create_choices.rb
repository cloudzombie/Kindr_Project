class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :name
      t.string :category

      t.timestamps null: false
    end
  end
end
