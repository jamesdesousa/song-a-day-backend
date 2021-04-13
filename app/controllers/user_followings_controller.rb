class UserFollowingsController < ApplicationController
    def followers
        @followers = User.find_by(params[:id])
      end
    
      def create
        @followership = UserFollower.create(user_id: User.find_by(params[:id]), follower_id: params[:id])
    
        
      end 
        
      def delete
        # @follower = @current_user.followers.find_by(follower_id: params[:id])
        @follower.destroy
        redirect_to user_path(params[:id])
      end
end
