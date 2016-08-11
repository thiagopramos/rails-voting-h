class CreateJudgements < ActiveRecord::Migration[5.0]
  def change
    create_table :judgements do |t|
      t.integer :cat1
      t.integer :cat2
      t.integer :cat3
      t.integer :cat4
      t.integer :cat5
      t.references :contestant, foreign_key: true

      t.timestamps
    end
  end
end
