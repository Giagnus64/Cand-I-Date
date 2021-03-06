class FollowsController < ApplicationController
    before_action :find_follow, only: [:edit, :update]
    before_action :authorized
    def create
        
        @follow = Follow.create(follow_params)
        redirect_to politicians_path
    end

    def edit    
        @follow = Follow.find_by(user_id: params["user_id"],politician_id: params["politician_id"]) 
    end

    def update    
        #@follow = Follow.find_by(user_id: params["user_id"],politician_id: params["politician_id"])
        @follow.update(follow_params)
        redirect_to(@current_user)
    end

    private
    def find_follow
        @follow = Follow.find(params[:id])
    end
    def follow_params
        params.permit(:user_id, :politician_id, :match)
    end
end
