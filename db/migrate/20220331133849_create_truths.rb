class CreateTruths < ActiveRecord::Migration[6.1]
  def change
    create_table :truths do |t|
      t.text :text

      t.timestamps
    end
  end
end
