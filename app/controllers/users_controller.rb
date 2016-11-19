class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:lastName, :firstName, :middleName, :username, :position, :address, :city, :state, :zip, :officePhone, :officeExt, :cellPhone, :email)
    end
end

