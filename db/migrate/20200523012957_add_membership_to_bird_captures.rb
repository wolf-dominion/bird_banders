class AddMembershipToBirdCaptures < ActiveRecord::Migration[6.0]
  def change
    add_reference :bird_captures, :membership, index: true
    add_foreign_key :bird_captures, :memberships
  end
end
