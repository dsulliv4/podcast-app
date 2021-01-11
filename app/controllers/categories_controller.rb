class CategoriesController < ApplicationController
    before_action :get_category, only: [:show]
   
   
    def index
        @categories = Category.all
        @podcasts = Podcast.all
    end 

   def show
       @podcasts = @category.podcasts.all
    end


    private 


        def get_category
            @category = Category.find(params[:id])
        end
end
