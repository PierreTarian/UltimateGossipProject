class AddReferenceLikesAffiliation < ActiveRecord::Migration[7.1]
  def change
    add_reference :likes, :user, foreign_key: true
    add_reference :likes, :comment, foreign_key: true
    add_reference :likes, :gossip, foreign_key: true
  end
end
