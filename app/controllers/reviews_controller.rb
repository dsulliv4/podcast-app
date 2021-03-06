class ReviewsController < ApplicationController
    
  
  
    def new
      if @podcast = Podcast.find_by_id(params[:podcast_id])
        @review = @podcast.reviews.build
      else
        @review = Review.new
      end
    end
  
    def create

      @review = current_user.reviews.build(review_params)
      if @review.save
        redirect_to podcast_path(@review.podcast)
      else
        render :new
      end
    end
  
    def show
      @review = Review.find_by_id(params[:id])
    end
  
    def index
      #how do i check if it's nested & a valid id
      if @podcast = Podcast.find_by_id(params[:podcast_id])
        #nested
        @reviews = @podcast.reviews
      else
        #it's not nested
        @reviews = Review.all
      end
    end
  
    private
  
    def review_params
        params.require(:review).permit(:podcast_id, :description, :stars, :title)
    end
  
  
  
  
  end