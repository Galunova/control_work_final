class AddEstablishmentToUser < ActiveRecord::Migration[5.1]
  def change
  	add_reference :establishments, :user, foreign_key: true
  end
end
