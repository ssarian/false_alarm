class AccountOwnersController < InheritedResources::Base

  private

    def account_owner_params
      params.require(:account_owner).permit(:acctNum, :firstName, :lastName, :middleName, :address, :city, :state, :zip, :homePhone, :workPhone, :cellphone, :email)
    end
end

