class AddLocationAndExperienceToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :location, :string
    add_column :cars, :experience, :integer
  end
end
