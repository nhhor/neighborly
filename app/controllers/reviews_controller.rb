
class ReviewsController < ApplicationController

  def index
    # Code for listing all reviews goes here.
  end

  def new
    # Code for new review form goes here.
  end

  def create
    # Code for creating a new review goes here.
  end

  def edit
    # Code for edit review form goes here.
  end

  def show
    # Code for showing a single review goes here.
  end

  def update
    # Code for updating an review goes here.
  end

  def destroy
    # Code for deleting an review goes here.
  end

end

def create
  @review = Review.new(review_params)
  if @review.save
    redirect_to reviews_path
  else
    render :new
  end
end
def destroy
   @review = Review.find(params[:id])
   @review.destroy
   redirect_to reviews_path
 end
# Other controller methods go here.

private
  def review_params
    params.require(:review).permit(:user_like, :user_id, :reviewer_id, :user_comments)
  end

end
