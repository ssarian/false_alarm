class PermitsController < InheritedResources::Base

  private

    def permit_params
      params.require(:permit).permit(:permitNum, :permitType, :permitStartDate, :permitExpDate, :fkPropertyKey, :fkAlarmKey, :fkUserKey, :fkPaymentKey)
    end
end

