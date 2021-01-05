class PodcastsController < ApplicationController
    before_action :user_signed_in?

    def new
        @podcast = Podcast.new

    end

   def create   
    @podcast = current_user.podcasts.build(podcast_params)
      if @podcast.save
        redirect_to podcast_path(@podcast)
      else
        render :new
      end
   end 

   def index
   end 

   


private

def podcast_params 
    params.require!
end


end 