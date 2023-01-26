class CreateSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.string :title
      t.integer :duration, default: 0

      t.timestamps
    end
  end
end
