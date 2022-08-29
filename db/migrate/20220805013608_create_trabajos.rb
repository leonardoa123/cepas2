class CreateTrabajos < ActiveRecord::Migration[7.0]
  def change
    create_table :trabajos do |t|
      t.references :enologo, null: false, foreign_key: true
      t.references :revista, null: false, foreign_key: true
      t.references :cargo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
