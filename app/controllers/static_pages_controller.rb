class StaticPagesController < ApplicationController
    require "flickr"

    def index
        flickr = Flickr.new "cf2f54491f5497a1814bc491dfd5098e", "0edfd6c5a564e8c1"
        unless params[:user_id] == nil
            @list = flickr.people.getPublicPhotos :user_id => params[:user_id]
        end
    end
end


#191863091@N05