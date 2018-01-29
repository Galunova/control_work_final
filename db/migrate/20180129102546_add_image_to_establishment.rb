class AddImageToEstablishment < ActiveRecord::Migration[5.1]
  def change
  	change_table :establishments do |t|
      t.string :image
    end
  end
end
