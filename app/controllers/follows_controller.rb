class FollowsController < ApplicationController
    def create
        
        @follow = Follow.create(follow_params)
        redirect_to politicians_path
    end

    private
    def follow_params
        
        params.permit(:user_id, :politician_id, :match)
    end
end
