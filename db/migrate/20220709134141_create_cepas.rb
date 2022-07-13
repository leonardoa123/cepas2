class CreateCepas < ActiveRecord::Migration[7.0]
  def change
    create_table :cepas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
