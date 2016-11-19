class LoginsController < InheritedResources::Base

  private

    def login_params
      params.require(:login).permit(:loginDateTime, :fkUserKey)
    end
end

