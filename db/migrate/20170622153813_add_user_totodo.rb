class AddUserTotodo < ActiveRecord::Migration
  def change
	add_reference :todos, :users
  end
end
