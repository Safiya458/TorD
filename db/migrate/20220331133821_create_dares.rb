class CreateDares < ActiveRecord::Migration[6.1]
  def change
    create_table :dares do |t|
      t.text :text

      t.timestamps
    end
  end
end
