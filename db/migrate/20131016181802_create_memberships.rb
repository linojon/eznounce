class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :person
      t.references :group

      t.timestamps
    end
  end
end
