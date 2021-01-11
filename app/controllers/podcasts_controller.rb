class PodcastsController < ApplicationController

    def new
      @podcast = Podcast.new
    end
  
    def create
        if params[:podcast][:id].present?  
          @podcast = Podcast.find_by(id: params[:podcast][:id]) 
        else
          @podcast = Podcast.find_or_create_by(podcast_params) # if it is not present, then they want to create a new one, use find or create so it doesn't make duplicates
        end
    
        render :new 
      end
  
  
    def show
    
      @podcast = Podcast.find(params[:id])

    end
  
    def index
      @podcasts = Podcast.all
    end
  
  private
  
  def podcast_params
    params.require(:podcast).permit(:name, :author, :description, :category_id)
  end
  
    # def logged_in_user
    #   unless logged_in?
    #     store_location
    #     flash[:danger] = "Please log in."
    #     redirect_to login_url
    #   end
    # end
  
  end