class PermitsController < InheritedResources::Base

  private

    def permit_params
      params.require(:permit).permit(:permitNum, :siteType, :permitStartDate, :permitExpDate, :fkPropertyKey, :fkAlarmKey, :fkUserKey, :fkPaymentKey, :amountDue, :note, :status, :fkStatusKey)
    end

end

