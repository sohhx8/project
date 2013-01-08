class CreateThots < ActiveRecord::Migration
  def change
    create_table :thots do |t|
      t.text :content

      t.timestamps
    end
  end
end
