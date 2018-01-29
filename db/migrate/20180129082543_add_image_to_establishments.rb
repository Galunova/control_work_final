class AddImageToEstablishments < ActiveRecord::Migration[5.1]
  def change
		add_reference :images, :establishment, foreign_key: true
  end
end
