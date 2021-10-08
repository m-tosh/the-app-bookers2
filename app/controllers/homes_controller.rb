class HomesController < ApplicationController
  def top
    if user_signed_in?
      puts current_user
      #<User id: 1, email: "test@test.com", name: "ts01", introduction: nil, profile_image_id: nil, created_at: "2021-10-07 06:16:31", updated_at: "2021-10-07 06:16:31">

      @user = User.find(current_user.id)
    end
  end

  def about
  end
end
