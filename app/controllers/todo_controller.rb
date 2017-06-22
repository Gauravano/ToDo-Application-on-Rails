class TodoController < ApplicationController
	def add
		content = params[:content]
		todo = Todo.new
		todo.content = content
		todo.done = false
		todo.users_id = session[:p]
		todo.save
		return redirect_to '/user/index'
	end


	def done
		todo_id = params[:todo_id]
		todo = Todo.find(todo_id)
		if todo.users_id == session[:p]
			todo.done =!todo.done
			todo.save
		else
			
		end

		return redirect_to '/user/index'

	end
end
