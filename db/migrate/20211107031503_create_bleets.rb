class CreateBleets < ActiveRecord::Migration[6.1]
  def change
    create_table :bleets do |t|
      t.text :bleet

      t.timestamps
    end
  end
end
