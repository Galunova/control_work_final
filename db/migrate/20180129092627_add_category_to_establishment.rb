class AddCategoryToEstablishment < ActiveRecord::Migration[5.1]
  def change
  	add_reference :establishments, :category, foreign_key: true
  end
end
