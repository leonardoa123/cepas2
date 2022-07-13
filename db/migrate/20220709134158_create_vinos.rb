class CreateVinos < ActiveRecord::Migration[7.0]
  def change
    create_table :vinos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
