class CreateHypotheses < ActiveRecord::Migration
  def change
    create_table :hypotheses do |t|
      t.date :date
      t.string :name
      t.text :change
      t.text :impact
      t.text :who
      t.string :how_much
      t.string :how_long

      t.timestamps
    end
  end
end
