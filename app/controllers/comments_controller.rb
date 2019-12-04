class CommentsController < ApplicationController
  before_action :find_exhibition
 before_action :find_comment, only: [:destroy, :edit , :update]
def create
@comment = @exhibition.comments.create(params[:comment].permit(:content))
@comment.save
if @comment.save
  redirect_to exhibition_path(@exhibition)
else
  render 'new'
end
end
def destroy
@comment.destroy
redirect_to exhibition_path(@exhibition)
end
def edit
end
 
def update
if @comment.update(params[:comment].permit(:content))
  redirect_to exhibition_path(@exhibition)
  else
    render 'edit'
  end
end
private
def find_exhibition
  @exhibition = Exhibition.find(params[:exhibition_id])
end
def find_comment
  @comment = @exhibition.comments.find(params[:id])
end

end
