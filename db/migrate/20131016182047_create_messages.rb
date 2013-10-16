class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :person
      t.references :group
      t.text :text
      t.datetime :sent_at

      t.timestamps
    end
  end
end
