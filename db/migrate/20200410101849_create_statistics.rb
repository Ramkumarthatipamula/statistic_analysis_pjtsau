class CreateStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :statistics do |t|
      t.integer :no_of_treatments
      t.integer :no_of_samples
      t.string :analytical_type

      t.timestamps
    end
  end
end
