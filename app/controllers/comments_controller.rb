class CommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :load_commentable

 	def index	  	
	end

	def new
		@comment = @commentable.comments.new
	end

	def create
		# binding.pry
		@comment = @commentable.comments.new(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to @commentable,notice: "Comment was successfully posted."
	end

	private
	def comment_params
		params.require(:comment).permit(:context)
	end

	def load_commentable
	    resource, id = request.path.split('/')[1,2]
	    @commentable = resource.singularize.classify.constantize.find(id)
  	end
end
