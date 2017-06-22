class Todo < ActiveRecord::Base
		belongs_to :user

 def styleClass
  	if done
  		return "strikethrough"
  	else
  		return ""
  	end
  end

  def doneString
	if done
  		return "Undone"
  	else
  		return "Done"
  	end
  end


end
