class PodcastsController < ApplicationController

    def new
      @podcast = Podcast.new
    end
  
    def create
      @podcast = Podcast.create(podcast_params)

      if @podcast.present?
    
        redirect_to podcast_path(@podcast)
      else
        render :new
      end
    end
  
    def show
    
      @podcast = Podcast.find(params[:id])

    end
  
    def index
      @podcasts = Podcast.all
    end
  
  private
  
    def podcast_params
      params.require(:podcast).permit!
    end
  
    # def logged_in_user
    #   unless logged_in?
    #     store_location
    #     flash[:danger] = "Please log in."
    #     redirect_to login_url
    #   end
    # end
  
  end