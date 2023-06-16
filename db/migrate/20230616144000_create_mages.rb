class CreateMages < ActiveRecord::Migration[7.0]
  def change
    create_table :mages do |t|
      t.string :name
      t.string :elemental_power

      t.timestamps
    end
  end
end
